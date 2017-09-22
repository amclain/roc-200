defmodule ROC.ButtonsTest do
  use ESpec, async: false

  alias ROC.Buttons

  @start_button_pin Application.get_env(:roc_controller_io, :start_button)
  @stop_button_pin Application.get_env(:roc_controller_io, :stop_button)
  @mode_button_pin Application.get_env(:roc_controller_io, :mode_button)

  before do
    allow(Gpio).to accept(:start_link, fn(_pin, _dir) -> {:ok, self()} end)
    allow(Gpio).to accept(:set_int, fn(_pid, _edge) -> :ok end)

    Buttons.start_link
  end

  finally do
    self() |> Buttons.unsubscribe

    # For some reason Buttons.stop raises the following error:
    #   (UndefinedFunctionError) function Gpio.release/1 is undefined (module
    #   Gpio is not available)
    # allow(Gpio).to accept(:release, fn(_pid) -> :ok end)

    # :ok = Buttons.stop
  end

  it "can subscribe to events" do
    self() |> Buttons.subscribe

    send Buttons, {:gpio_interrupt, @start_button_pin, :rising}
    assert_receive {:button_press, :start_button, true}

    send Buttons, {:gpio_interrupt, @start_button_pin, :falling}
    assert_receive {:button_press, :start_button, false}

    send Buttons, {:gpio_interrupt, @stop_button_pin, :rising}
    assert_receive {:button_press, :stop_button, true}

    send Buttons, {:gpio_interrupt, @stop_button_pin, :falling}
    assert_receive {:button_press, :stop_button, false}

    send Buttons, {:gpio_interrupt, @mode_button_pin, :rising}
    assert_receive {:button_press, :mode_button, true}

    send Buttons, {:gpio_interrupt, @mode_button_pin, :falling}
    assert_receive {:button_press, :mode_button, false}
  end

  it "can unsubscribe from events" do
    # Ensure a double subscribe is accounted for.
    self() |> Buttons.subscribe
    self() |> Buttons.subscribe

    send Buttons, {:gpio_interrupt, @start_button_pin, :rising}
    assert_receive {:button_press, :start_button, true}

    self() |> Buttons.unsubscribe

    send Buttons, {:gpio_interrupt, @start_button_pin, :rising}
    refute_receive {:button_press, :start_button, true}
  end
end
