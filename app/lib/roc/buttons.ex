defmodule ROC.Buttons do
  @moduledoc """
  Manages physical buttons attached to the controller.
  """

  use ExActor.GenServer, export: __MODULE__

  require Logger

  defmodule State, do: defstruct [
    :subscribers,
    :start_button_pid,
    :stop_button_pid,
    :mode_button_pid,
  ]

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

  @doc """
  Subscribe to :button_press events.
  Messages are sent in the following format:
    {:button_press, button, value}
  """
  defcast subscribe(subscriber), state: state do
    subscribers = [subscriber | state.subscribers] |> Enum.uniq
    new_state(%State{state | subscribers: subscribers})
  end

  @doc """
  Unsubscribe from button events.
  """
  defcast unsubscribe(subscriber), state: state do
    subscribers = state.subscribers |> List.delete(subscriber)
    new_state(%State{state | subscribers: subscribers})
  end

  defp notify_subscribers(subscribers, button, value) do
    subscribers
    |> Enum.each(fn(subscriber) ->
      send subscriber, {:button_press, button, value}
    end)
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
