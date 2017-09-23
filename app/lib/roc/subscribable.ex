defmodule ROC.Subscribable do
  @moduledoc """
  A behaviour that exposes a subscription and notification mechanism for events.

  A struct named `State` must be implemented with the `subscribers` property
  and initialized to an empty list `[]`.

  event_name - An atom identifying an actor's events.
  """

  require ExActor.GenServer

  defmacro __using__(event_name: event_name) do
    quote do
      @doc """
      Subscribe to events.
      """
      defcast subscribe(subscriber), state: state do
        subscribers = [subscriber | state.subscribers] |> Enum.uniq
        new_state(%__MODULE__.State{state | subscribers: subscribers})
      end

      @doc """
      Unsubscribe from events.
      """
      defcast unsubscribe(subscriber), state: state do
        subscribers = state.subscribers |> List.delete(subscriber)
        new_state(%__MODULE__.State{state | subscribers: subscribers})
      end

      # Called internally to push an event to the subscribers.
      #
      # subscribers - List of subscribers.
      # component - Name of the component the event is for.
      # value - Value of the component that triggered the event.
      defp notify_subscribers(subscribers, component, value) do
        subscribers
        |> Enum.each(fn(subscriber) ->
          send subscriber, {unquote(event_name), component, value}
        end)
      end
    end
  end
end
