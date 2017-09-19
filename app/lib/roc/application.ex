defmodule ROC.Application do
  use Application

  alias ROC.Network

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Network, []),
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: ROC.Supervisor)
  end
end
