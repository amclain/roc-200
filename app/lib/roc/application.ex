defmodule ROC.Application do
  use Application

  alias ROC.{Buttons, Controller, Network, OvenRelays, SPI}

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Network, []),
      worker(Buttons, []),
      worker(OvenRelays, []),
      worker(SPI, []),
      worker(Controller, []),
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: ROC.Supervisor)
  end
end
