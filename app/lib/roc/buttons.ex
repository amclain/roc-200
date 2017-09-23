defmodule ROC.Buttons do
  @moduledoc """
  Manages physical buttons attached to the controller.
  """

  defmodule State, do: defstruct [
    :subscribers,
    :start_button_pid,
    :stop_button_pid,
    :mode_button_pid,
  ]

  use ExActor.GenServer, export: __MODULE__
  use ROC.Subscribable, event_name: :button_press

  require Logger

  @start_button_pin Application.get_env(:roc_controller_io, :start_button)
  @stop_button_pin Application.get_env(:roc_controller_io, :stop_button)
  @mode_button_pin Application.get_env(:roc_controller_io, :mode_button)

  defstart start_link do
    {:ok, start_button_pid} = Gpio.start_link(@start_button_pin, :input)
    {:ok, stop_button_pid} = Gpio.start_link(@stop_button_pin, :input)
    {:ok, mode_button_pid} = Gpio.start_link(@mode_button_pin, :input)

    :ok = Gpio.set_int(start_button_pid, :both)
    :ok = Gpio.set_int(stop_button_pid, :both)
    :ok = Gpio.set_int(mode_button_pid, :both)

    initial_state(%State{
      subscribers: [],
      start_button_pid: start_button_pid,
      stop_button_pid: stop_button_pid,
      mode_button_pid: mode_button_pid,
    })
  end

  defcast stop, state: state do
    Gpio.release(state.start_button_pid)
    Gpio.release(state.stop_button_pid)
    Gpio.release(state.mode_button_pid)

    stop_server(:normal)
  end

  defhandleinfo {:gpio_interrupt, pin, edge}, state: state do
    button =
      case pin do
        @start_button_pin -> :start_button
        @stop_button_pin -> :stop_button
        @mode_button_pin -> :mode_button
      end

    value =
      case edge do
        :rising ->
          Logger.debug("#{button} pressed")
          true
        _ ->
          Logger.debug("#{button} released")
          false
      end

    state.subscribers |> notify_subscribers(button, value)

    noreply()
  end
end
