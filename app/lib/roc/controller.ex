defmodule ROC.Controller do

  defmodule State, do: defstruct [
    :stage,
    :timestamp,
    :timer_pid,
    :file_res,
  ]

  use ExActor.GenServer, export: __MODULE__

  require Logger

  alias ROC.{Buttons, OvenRelays, Thermocouple}

  @storage_path Application.get_env(:roc, :storage_path)

  defstart start_link do
    self() |> Buttons.subscribe

    initial_state(%State{
      stage: :idle,
      timestamp: 0,
      timer_pid: nil,
      file_res: nil,
    })
  end

  defcast stop, state: state do
    OvenRelays.top_element_active(false)
    OvenRelays.bottom_element_active(false)
    OvenRelays.convection_fan_active(false)

    self() |> Buttons.unsubscribe

    if state.timer_pid do
      state.timer_pid |> Process.cancel_timer
    end

    if state.file_res do
      state.file_res |> File.close
    end

    stop_server(:normal)
  end

  defhandleinfo {:button_press, :start_button, true}, state: state do
    updated_state =
      case state.stage do
        :idle -> start_job(state)
        _ -> state
      end

    new_state(state |> Map.merge(updated_state))
  end

  defhandleinfo {:button_press, :stop_button, true}, state: state do
    updated_state =
      case state.stage do
        :idle -> state
        _ -> stop_job(state)
      end

    new_state(state |> Map.merge(updated_state))
  end

  defhandleinfo {:button_press, _button, _value} do
    noreply()
  end

  defhandleinfo :timer, state: state do
    state.timer_pid |> Process.cancel_timer
    timer_pid = start_timer()

    updated_state = %State{
      state |
      timer_pid: timer_pid,
      timestamp: state.timestamp + 1,
    }

    {top_temp, bottom_temp} = log_measurement(updated_state)

    updated_state =
      cond do
        # Oven reached peak temp. Enter passive cooling to avoid disrupting
        # molten solder with airflow.
        top_temp >= 215 && state.stage == :running ->
          Logger.info ">>>>>>   OPEN DOOR   <<<<<<"
          passive_cooling(state)

        # Solder is below melting point. Start forced cooling.
        top_temp < 180 && state.stage == :passive_cooling ->
          forced_cooling(state)

        # Oven has reached a low temp. Stop job.
        # TODO: Dynamically detect stop point when temp is below 38 and changes
        # less than x degrees/sec over t seconds.
        top_temp <= 35 && bottom_temp <= 35 && state.stage == :forced_cooling ->
          stop_job(updated_state)

        true ->
          updated_state
      end

    new_state(updated_state)
  end

  defp start_job(state) do
    file_path =
      "#{@storage_path}/#{DateTime.utc_now}.csv"
      |> Path.expand

    Logger.info "Running job..."

    file_path
    |> Path.dirname
    |> File.mkdir_p!

    {:ok, file_res} = File.open(file_path, [:write])
    file_res |> IO.binwrite("Time,Top,Bottom\n")

    timer_pid = start_timer()

    updated_state = %State{
      state |
      stage: :running,
      timestamp: 0,
      timer_pid: timer_pid,
      file_res: file_res,
    }

    log_measurement(updated_state)

    :ok = OvenRelays.top_element_active(true)
    :ok = OvenRelays.bottom_element_active(true)
    :ok = OvenRelays.convection_fan_active(false)

    updated_state
  end

  defp stop_job(state) do
    Logger.info "Stopped job."

    :ok = OvenRelays.top_element_active(false)
    :ok = OvenRelays.bottom_element_active(false)
    :ok = OvenRelays.convection_fan_active(false)

    state.timer_pid |> Process.cancel_timer
    state.file_res |> File.close

    %State{
      state |
      stage: :idle,
      timer_pid: nil,
      file_res: nil,
    }
  end

  defp passive_cooling(state) do
    :ok = OvenRelays.top_element_active(false)
    :ok = OvenRelays.bottom_element_active(false)
    :ok = OvenRelays.convection_fan_active(false)

    %State{state | stage: :passive_cooling}
  end

  defp forced_cooling(state) do
    :ok = OvenRelays.top_element_active(false)
    :ok = OvenRelays.bottom_element_active(false)
    :ok = OvenRelays.convection_fan_active(true)
    
    %State{state | stage: :forced_cooling}
  end

  defp log_measurement(state) do
    top_temp = Thermocouple.value_of(:top_thermocouple)
    bottom_temp = Thermocouple.value_of(:bottom_thermocouple)
    Logger.info "Time: #{state.timestamp}   Top: #{top_temp}   Bottom: #{bottom_temp}"

    state.file_res |> IO.binwrite("#{state.timestamp},#{top_temp},#{bottom_temp}\n")

    {top_temp, bottom_temp}
  end

  defp start_timer do
    self() |> Process.send_after(:timer, 1000)
  end
end
