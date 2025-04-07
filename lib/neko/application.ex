defmodule Neko.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Neko.Repo
    ]

    opts = [strategy: :one_for_one, name: Neko.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
