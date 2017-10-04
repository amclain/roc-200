defmodule ROC.ControllerTest do
  use ESpec, async: false

  alias ROC.Controller
  alias ROC.{Buttons, OvenRelays, Thermocouple}

  before do
    allow(OvenRelays).to accept(:top_element_active, fn(_value) -> :ok end)
    allow(OvenRelays).to accept(:bottom_element_active, fn(_value) -> :ok end)
    allow(OvenRelays).to accept(:convection_fan_active, fn(_value) -> :ok end)

    Controller.start_link
  end

  finally do
    Controller.stop
  end

  # TODO: For some reason mocks are allowing the functions to run that
  # they're mocking.

  xit "subscribes to button events" do
    allow(Controller).to accept(:start_job, fn(_state) -> %{} end)

    send Controller, {:button_press, :start_button, true}

    assert_receive {:button_press, :start_button, true}
    expect(Controller).to accept(:start_job)
  end

  it "runs a job when the start button is pressed if currently stopped"
  it "ignores start button if already running"
  it "can be stopped in the middle of a job"
  it "ignores stop button if alreay stopped"
end
