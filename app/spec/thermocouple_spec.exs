defmodule ROC.ThermocoupleTest do
  use ESpec, async: false

  alias ROC.{Thermocouple, SPI}

  let :thermocouple_name, do: :top_thermocouple
  let :rx_payload, do: <<0x01901900::32>> # 25°C, no faults

  context "value_of" do
    before do
      rx_payload = rx_payload()

      allow(SPI).to accept(:transfer, fn(_address, dummy_payload) ->
        dummy_payload
        |> String.length
        |> should(eq 4)

        rx_payload
      end)
    end

    it "can get the value of a thermocouple" do
       Thermocouple.value_of(thermocouple_name()) |> should(eq 25.0)
    end

    describe "raises an error if the circuit is open" do
      let :rx_payload, do: <<0x01911901::32>> # open circuit fault

      specify do
        expect fn -> Thermocouple.value_of(thermocouple_name()) end
        |> to(raise_exception Thermocouple.OpenCircuitError)
      end
    end

    describe "raises an error if the circuit is shorted to gnd" do
      let :rx_payload, do: <<0x01911902::32>> # shorted gnd fault

      specify do
        expect fn -> Thermocouple.value_of(thermocouple_name()) end
        |> to(raise_exception Thermocouple.ShortedGndError)
      end
    end

    describe "raises an error if the circuit is shorted to vcc" do
      let :rx_payload, do: <<0x01911904::32>> # shorted vcc fault

      specify do
        expect fn -> Thermocouple.value_of(thermocouple_name()) end
        |> to(raise_exception Thermocouple.ShortedVccError)
      end
    end
  end

  describe "has thermocouples" do
    before do
      rx_payload = rx_payload()

      allow(SPI).to accept(:transfer, fn(_address, _dummy_payload) -> rx_payload end)
    end

    describe ":top_thermocouple" do
      let :thermocouple_name, do: :top_thermocouple
      let :address, do: {0, 0}

      specify do
        Thermocouple.value_of(thermocouple_name())

        expect(SPI).to accepted(:transfer, [address(), <<0x0::32>>])
      end
    end

    describe ":bottom_thermocouple" do
      let :thermocouple_name, do: :bottom_thermocouple
      let :address, do: {0, 1}

      specify do
        Thermocouple.value_of(thermocouple_name())

        expect(SPI).to accepted(:transfer, [address(), <<0x0::32>>])
      end
    end
  end
end
