defmodule ROC.OvenRelays do
  @moduledoc """
  Manages control over the oven's high voltage relays.
  """

  defmodule State, do: defstruct [
    :subscribers,
    :top_element_pid,
    :top_element_value,
    :bottom_element_pid,
    :bottom_element_value,
    :convection_fan_pid,
    :convection_fan_value,
  ]

  use ExActor.GenServer, export: __MODULE__
  use ROC.Subscribable, event_name: :oven_relay

  require Logger

  alias ElixirALE.GPIO

  @top_element_pin Application.get_env(:roc_controller_io, :top_element)
  @bottom_element_pin Application.get_env(:roc_controller_io, :bottom_element)
  @convection_fan_pin Application.get_env(:roc_controller_io, :convection_fan)

  defstart start_link do
    {:ok, top_element_pid} = GPIO.start_link(@top_element_pin, :output)
    {:ok, bottom_element_pid} = GPIO.start_link(@bottom_element_pin, :output)
    {:ok, convection_fan_pid} = GPIO.start_link(@convection_fan_pin, :output)

    %State{
      subscribers: [],
      top_element_pid: top_element_pid,
      top_element_value: false,
      bottom_element_pid: bottom_element_pid,
      bottom_element_value: false,
      convection_fan_pid: convection_fan_pid,
      convection_fan_value: false,
    }
    |> high_voltage_off!
    |> initial_state
  end

  defcast stop, state: state do
    high_voltage_off!(state)

    GPIO.release(state.top_element_pid)
    GPIO.release(state.bottom_element_pid)
    GPIO.release(state.convection_fan_pid)

    stop_server(:normal)
  end

  @doc """
  Turn on/off the top heating element(s).
  """
  defcall top_element_active(value), state: state do
    state
    |> set_top_element(value)
    |> set_and_reply(:ok)
  end

  defp set_top_element(state, value) do
    case value do
      true ->
        Logger.debug("top_element on")
      false ->
        Logger.debug("top_element off")
    end

    :ok = state.top_element_pid |> GPIO.write(value)
    state.subscribers |> notify_subscribers(:top_element, value)

    %State{state | top_element_value: value}
  end

  @doc """
  Turn on/off the bottom heating element(s).
  """
  defcall bottom_element_active(value), state: state do
    state
    |> set_bottom_element(value)
    |> set_and_reply(:ok)
  end

  defp set_bottom_element(state, value) do
    case value do
      true ->
        Logger.debug("bottom_element on")
      false ->
        Logger.debug("bottom_element off")
    end

    :ok = state.bottom_element_pid |> GPIO.write(value)
    state.subscribers |> notify_subscribers(:bottom_element, value)

    %State{state | bottom_element_value: value}
  end

  @doc """
  Turn on/off the convection fan.
  """
  defcall convection_fan_active(value), state: state do
    state
    |> set_convection_fan(value)
    |> set_and_reply(:ok)
  end

  defp set_convection_fan(state, value) do
    case value do
      true ->
        Logger.debug("convection_fan on")
      false ->
        Logger.debug("convection_fan off")
    end

    :ok = state.convection_fan_pid |> GPIO.write(value)
    state.subscribers |> notify_subscribers(:convection_fan, value)

    %State{state | convection_fan_value: value}
  end

  @doc """
  Abruptly shut off all of the oven's high voltage electronics.
  """
  defcall emergency_shutoff!, state: state do
    state
    |> high_voltage_off!
    |> set_and_reply(:ok)
  end

  # Shut off all high voltage electronics.
  defp high_voltage_off!(state) do
    # TODO: Error handling to ensure components turn off.
    state
    |> set_top_element(false)
    |> set_bottom_element(false)
    |> set_convection_fan(false)
  end
end
