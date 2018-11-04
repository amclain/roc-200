defmodule ROC.SPI do
  @moduledoc """
  Interface to the SPI bus.
  """

  defmodule State, do: defstruct [
    :spi0_pid,
    :cs0_pid,
    :cs1_pid,
    :cs2_pid,
  ]

  use ExActor.GenServer, export: __MODULE__

  @spi0_cs0_pin Application.get_env(:roc_controller_io, :spi0_cs0)
  @spi0_cs1_pin Application.get_env(:roc_controller_io, :spi0_cs1)
  @spi0_cs2_pin Application.get_env(:roc_controller_io, :spi0_cs2)

  defstart start_link do
    enable_spi_hardware()

    {:ok, spi0_pid} = ElixirALE.SPI.start_link("spidev1.0")
    {:ok, cs0_pid} = ElixirALE.GPIO.start_link(@spi0_cs0_pin, :output)
    {:ok, cs1_pid} = ElixirALE.GPIO.start_link(@spi0_cs1_pin, :output)
    {:ok, cs2_pid} = ElixirALE.GPIO.start_link(@spi0_cs2_pin, :output)

    :ok = cs0_pid |> ElixirALE.GPIO.write(true)
    :ok = cs1_pid |> ElixirALE.GPIO.write(true)
    :ok = cs2_pid |> ElixirALE.GPIO.write(true)

    initial_state(%State{
      spi0_pid: spi0_pid,
      cs0_pid: cs0_pid,
      cs1_pid: cs1_pid,
      cs2_pid: cs2_pid,
    })
  end

  defcast stop, state: state do
    state.spi0_pid |> ElixirALE.SPI.release

    state.cs0_pid |> ElixirALE.GPIO.release
    state.cs1_pid |> ElixirALE.GPIO.release
    state.cs2_pid |> ElixirALE.GPIO.release

    stop_server(:normal)
  end

  @doc """
  Transfer a binary payload to the device and receive a message.

  Address is in the format: {bus_id, cs_id}
  Where `bus_id` is the number of the SPI bus starting at 0 and `cs_id` is the
  chip select number of a device on the bus starting at 0.
  """
  defcall transfer(address, payload), state: state do
    received_data =
      address
      |> address_to_pids(state)
      |> dispatch(payload)

    reply(received_data)
  end

  # Enable the Beagle Bone Black SPI hardware so that it's available in the
  # device tree.
  defp enable_spi_hardware do
    File.write("/sys/devices/platform/bone_capemgr/slots","BB-SPIDEV0")
    # File.write("/sys/devices/platform/bone_capemgr/slots","BB-SPIDEV1")
  end

  # Convert a SPI bus and chip select ID tuple to the pids of their respective
  # GenServers. 
  defp address_to_pids({bus_id, cs_id}, state) do
    spi0_pid =
      case bus_id do
        0 -> state.spi0_pid
      end

    cs_pid =
      case cs_id do
        0 -> state.cs0_pid
        1 -> state.cs1_pid
        2 -> state.cs2_pid
      end

    {spi0_pid, cs_pid}
  end

  # Dispatch a payload to the given device on the SPI bus and receive a message.
  defp dispatch({spi0_pid, cs_pid}, payload) do
    cs_pid |> ElixirALE.GPIO.write(false)
    received_data = spi0_pid |> ElixirALE.SPI.transfer(String.reverse(payload))
    cs_pid |> ElixirALE.GPIO.write(true)

    received_data
  end
end
