defmodule Neko.Repo do
  use Ecto.Repo,
    otp_app: :neko,
    adapter: Ecto.Adapters.SQLite3
end
