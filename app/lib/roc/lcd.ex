defmodule ROC.LCD do
  @moduledoc """
  LCD Display Controller
  2 x 20

  Uses the Newhaven Display NHD-0220CW-AG3.
    http://www.newhavendisplay.com/specs/NHD-0220CW-AG3.pdf
  """

  defmodule State, do: defstruct [
    :reset_pid,
  ]

  use ExActor.GenServer, export: __MODULE__

  require Logger

  alias ROC.SPI

  @reset_pin Application.get_env(:roc_controller_io, :lcd_reset)

  @lcd_address {0, 2}

  defstart start_link do
    {:ok, reset_pid} = ElixirALE.GPIO.start_link(@reset_pin, :output)

    reset(reset_pid)

    initial_state(%State{
      reset_pid: reset_pid,
    })
  end

  defcast stop, state: state do
    state.reset_pid |> ElixirALE.GPIO.release

    stop_server(:normal)
  end

  @doc """
  Issue a hardware reset.
  """
  defcall reset, state: state do
    reset(state.reset_pid)

    noreply
  end

  defp reset(reset_pid) do
    reset_pid |> ElixirALE.GPIO.write(false)

    # We DO acutally want to block the GenServer until the reset has completed,
    # otherwise the hardware won't be initialized.
    :timer.sleep(1)

    reset_pid |> ElixirALE.GPIO.write(true)
  end

  @doc """
  Clear the display.
  """
  def clear do
    @lcd_address |> SPI.transfer(<<0xF80010>>)
  end

  @doc """
  Write the text to the display.
  """
  def write(text) do
    start_byte = 0xF8

    @lcd_address |> SPI.transfer(<<0xF81000>>) # Clear
    @lcd_address |> SPI.transfer(<<0xF8F000>>) # Display on
    @lcd_address |> SPI.transfer(<<0xFA1040>>) # Write "A"
    # @lcd_address |> SPI.transfer(text)
  end
end
