# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :poc_oban,
  ecto_repos: [PocOban.Repo]

# Configures the endpoint
config :poc_oban, PocObanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5VtZgSAHzfDe31KpB1gFEscuLB1bGuLcyulAgGobLHVxU/qY6JFVZDfRGHD4FFqy",
  render_errors: [view: PocObanWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PocOban.PubSub,
  live_view: [signing_salt: "kwsLX4K6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :poc_oban, Oban,
  repo: PocOban.Repo,
  queues: [default: 10, mailers: 20, events: 50, low: 5],
  plugins: [
    Oban.Plugins.Pruner,
    {Oban.Plugins.Cron,
     crontab: [
      #  {"* * 12 * *", PocOban.Workers.DailyTedsConciliationWorker}
     ]}
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
