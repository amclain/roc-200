defmodule ROC.SubscribableTest do
  use ESpec

  defmodule EventGenerator do
    defmodule State, do: defstruct [:subscribers]

    use ExActor.GenServer
    use ROC.Subscribable, event_name: :event_generator

    defstart start_link do
      initial_state(%State{subscribers: []})
    end

    defcast send_event, state: state do
      state.subscribers |> notify_subscribers(:button_press, true)

      noreply()
    end

    defcast stop do
      stop_server(:normal)
    end
  end

  before do
    {:ok, pid} = EventGenerator.start_link

    {:shared, event_generator: pid}
  end

  finally do
    shared.event_generator |> EventGenerator.stop
  end

  it "can subscribe to events" do
    shared.event_generator |> EventGenerator.subscribe(self())
    shared.event_generator |> EventGenerator.send_event

    assert_receive {:event_generator, :button_press, true}
  end

  it "can unsubscribe from events" do
    shared.event_generator |> EventGenerator.subscribe(self())
    shared.event_generator |> EventGenerator.send_event

    assert_receive {:event_generator, :button_press, true}

    shared.event_generator |> EventGenerator.unsubscribe(self())
    shared.event_generator |> EventGenerator.send_event

    refute_receive {:event_generator, :button_press, true}
  end

  it "prevents subscribers from subscribing more than once" do
    shared.event_generator |> EventGenerator.subscribe(self())
    shared.event_generator |> EventGenerator.subscribe(self())
    shared.event_generator |> EventGenerator.send_event

    assert_receive {:event_generator, :button_press, true}
    refute_receive {:event_generator, :button_press, true}
  end
end
