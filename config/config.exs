# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :app_prototype,
  ecto_repos: [AppPrototype.Repo]

# Configures the endpoint
config :app_prototype, AppPrototype.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W2KbsAr9v8Ji2VtYcNnVGjBNdTMiGw4Q1wyU0XVh1D+WAehS2b/Qtwy0AKfbv7jK",
  render_errors: [view: AppPrototype.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AppPrototype.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
