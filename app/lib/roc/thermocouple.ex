defmodule ROC.Thermocouple do
  @moduledoc """
  Thermocouple sensor manager.

  Uses the MAX31855.
    https://datasheets.maximintegrated.com/en/ds/MAX31855.pdf
  """

  defmodule OpenCircuitError, do: defexception [:message]
  defmodule ShortedGndError, do: defexception [:message]
  defmodule ShortedVccError, do: defexception [:message]

  require Logger

  alias ROC.SPI

  @top_thermocouple_address {0, 0}
  @bottom_thermocouple_address {0, 1}

  @doc """
  Return the value of a thermocouple in degrees celsius.

  Raises errors if the device returns fault codes.
  """
  def value_of(:top_thermocouple), do: _value_of(@top_thermocouple_address)
  def value_of(:bottom_thermocouple), do: _value_of(@bottom_thermocouple_address)

  defp _value_of(thermocouple_address) do
    try do
      thermocouple_address
      |> SPI.transfer(<<0x00000000::32>>)
      |> decode_temperature()
    rescue
      OpenCircuitError ->
        raise OpenCircuitError,
        message: "#{thermocouple_address |> name_from_address()} circuit is open"

      ShortedVccError ->
        raise ShortedVccError,
        message: "#{thermocouple_address |> name_from_address()} is shorted to VCC"

      ShortedGndError ->
        raise ShortedGndError,
        message: "#{thermocouple_address |> name_from_address()} is shorted to GND"
    end
  end

  # Translate a thermocouple SPI bus address to a human-readable name.
  defp name_from_address(@top_thermocouple_address), do: "Top thermocouple"
  defp name_from_address(@bottom_thermocouple_address), do: "Bottom thermocouple"

  # Decode the thermocouple temperature in degrees celsius from the given payload.
  #
  # Raises errors if there are fault codes in the payload.
  defp decode_temperature(payload) do
    <<
      thermocouple_steps::integer-signed-size(14),
      _reserved::1,
      _fault::1,
      _junction_steps::integer-signed-size(12),
      _reserved2::1,
      shorted_to_vcc_fault::1,
      shorted_to_gnd_fault::1,
      open_circuit_fault::1,
    >> = payload

    if open_circuit_fault == 1, do: raise OpenCircuitError
    if shorted_to_gnd_fault == 1, do: raise ShortedGndError
    if shorted_to_vcc_fault == 1, do: raise ShortedVccError
    
    thermocouple_steps * 0.25
  end
end
