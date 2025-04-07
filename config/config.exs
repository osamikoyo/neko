import Config

config :neko, Neko.Repo,
  database: "storage/main.db",
  pool_size: 5

config :neko, ecto_repos: [Neko.Repo]
config :bcrypt_elixir, log_rounds: 10
