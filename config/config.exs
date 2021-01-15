# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :heart,
  namespace: H,
  ecto_repos: [H.Repo]

# Configures the endpoint
config :heart, HWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LgzGA3tnZTQ7sptJ90BlEzQdWdZpsMc16Smuahy0vXQ4nXJacqNPjVDWrN6JvXh4",
  render_errors: [view: HWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: H.PubSub,
  live_view: [signing_salt: "OYq9mMEF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
