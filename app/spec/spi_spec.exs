defmodule ROC.SPITest do
  use ESpec, async: false

  alias ROC.SPI

  @spi0_cs0_pin Application.get_env(:roc_controller_io, :spi0_cs0)
  @spi0_cs1_pin Application.get_env(:roc_controller_io, :spi0_cs1)
  @spi0_cs2_pin Application.get_env(:roc_controller_io, :spi0_cs2)

  let :address, do: {0, 0}
  let :tx_payload, do: <<0x01, 0x02>>
  let :rx_payload, do: <<0x03, 0x04>>

  let :spi0_pid, do: :c.pid(0,251,0)
  let :spi0_cs0_pid, do: :c.pid(0,252,0)
  let :spi0_cs1_pid, do: :c.pid(0,253,0)
  let :spi0_cs2_pid, do: :c.pid(0,254,0)

  before do
    rx_payload = rx_payload()

    spi0_pid = spi0_pid()
    spi0_cs0_pid = spi0_cs0_pid()
    spi0_cs1_pid = spi0_cs1_pid()
    spi0_cs2_pid = spi0_cs2_pid()

    allow(ElixirALE.SPI).to accept(:start_link, fn(_dev) -> {:ok, spi0_pid} end)
    allow(ElixirALE.SPI).to accept(:transfer, fn(_pid, _payload) -> rx_payload end)
    allow(ElixirALE.GPIO).to accept(:start_link, fn(pin, dir) ->
      dir |> should(eq :output)

      pid =
        case pin do
          @spi0_cs0_pin -> spi0_cs0_pid
          @spi0_cs1_pin -> spi0_cs1_pid
          @spi0_cs2_pin -> spi0_cs2_pid
        end

      {:ok, pid}
    end)

    allow(ElixirALE.GPIO).to accept(:write, fn(_pid, _value) -> :ok end)

    SPI.start_link
  end

  finally do
    # TODO: Raises undefined function error.
    # SPI.stop
  end

  it "transfers SPI data to a device" do
    rx = address() |> SPI.transfer(tx_payload())

    expect(ElixirALE.GPIO).to accepted(:write, [spi0_cs0_pid(), false])
    expect(ElixirALE.SPI).to accepted(:transfer, [spi0_pid(), tx_payload()])
    expect(ElixirALE.GPIO).to accepted(:write, [spi0_cs0_pid(), true])

    expect(rx).to eq(rx_payload())
  end

  context "has device" do
    describe "spi 0 cs 0" do
      let :address, do: {0, 0}

      specify do
        address() |> SPI.transfer(tx_payload())
      end
    end

    describe "spi 0 cs 1" do
      let :address, do: {0, 1}

      specify do
        address() |> SPI.transfer(tx_payload())
      end
    end

    describe "spi 0 cs 2" do
      let :address, do: {0, 2}

      specify do
        address() |> SPI.transfer(tx_payload())
      end
    end
  end
end
