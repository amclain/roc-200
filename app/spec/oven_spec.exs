defmodule ROC.OvenTest do
  use ESpec, async: false

  alias ROC.OvenRelays

  @top_element_pin Application.get_env(:roc_controller_io, :top_element)
  @bottom_element_pin Application.get_env(:roc_controller_io, :bottom_element)
  @convection_fan_pin Application.get_env(:roc_controller_io, :convection_fan)

  def top_element_pid, do: :c.pid(0,251,0)
  def bottom_element_pid, do: :c.pid(0,252,0)
  def convection_fan_pid, do: :c.pid(0,253,0)

  before do
    allow(Gpio).to accept(:start_link, fn(pin, _dir) ->
      pid =
        case pin do
          @top_element_pin -> top_element_pid()
          @bottom_element_pin -> bottom_element_pid()
          @convection_fan_pin -> convection_fan_pid()
        end

      {:ok, pid}
    end)

    allow(Gpio).to accept(:write, fn(_pin, _value) -> :ok end)

    OvenRelays.start_link
    self() |> OvenRelays.subscribe
  end

  finally do
    self() |> OvenRelays.unsubscribe

    # For some reason OvenRelays.stop raises the following error:
    #   (UndefinedFunctionError) function Gpio.release/1 is undefined (module
    #   Gpio is not available)
    # allow(Gpio).to accept(:release, fn(_pid) -> :ok end)

    # :ok = OvenRelays.stop
  end

  it "can turn the top element on" do
    OvenRelays.top_element_active(true)
    |> should(eq :ok)

    expect(Gpio).to accepted(:write, [top_element_pid(), true])
    assert_receive {:oven_relay, :top_element, true}
  end

  it "can turn the top element off" do
    OvenRelays.top_element_active(false)
    |> should(eq :ok)

    expect(Gpio).to accepted(:write, [top_element_pid(), false])
    assert_receive {:oven_relay, :top_element, false}
  end

  it "can turn the bottom element on" do
    OvenRelays.bottom_element_active(true)
    |> should(eq :ok)

    expect(Gpio).to accepted(:write, [bottom_element_pid(), true])
    assert_receive {:oven_relay, :bottom_element, true}
  end

  it "can turn the bottom element off" do
    OvenRelays.bottom_element_active(false)
    |> should(eq :ok)

    expect(Gpio).to accepted(:write, [bottom_element_pid(), false])
    assert_receive {:oven_relay, :bottom_element, false}
  end

  it "can turn the convection fan on" do
    OvenRelays.convection_fan_active(true)
    |> should(eq :ok)

    expect(Gpio).to accepted(:write, [convection_fan_pid(), true])
    assert_receive {:oven_relay, :convection_fan, true}
  end

  it "can turn the convection fan off" do
    OvenRelays.convection_fan_active(false)
    |> should(eq :ok)

    expect(Gpio).to accepted(:write, [convection_fan_pid(), false])
    assert_receive {:oven_relay, :convection_fan, false}
  end

  it "implements an emergency shutoff" do
    OvenRelays.emergency_shutoff!
    |> should(eq :ok)

    expect(Gpio).to accepted(:write, [top_element_pid(), false])
    expect(Gpio).to accepted(:write, [bottom_element_pid(), false])
    expect(Gpio).to accepted(:write, [convection_fan_pid(), false])

    assert_receive {:oven_relay, :top_element, false}
    assert_receive {:oven_relay, :bottom_element, false}
    assert_receive {:oven_relay, :convection_fan, false}
  end

  specify "emergency shutoff error handling"
end