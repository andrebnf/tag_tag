# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :tag_tag, TagTagWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5+O9oS5loju9vHiGoEqY4zDbuQYYAlZnNO+4nvGGxFfeu+6/edLzu8kPvXiNcqX2",
  render_errors: [view: TagTagWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TagTag.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "7e+y68qu9Xtzcd9Jji7WRHTNGP4zAEnLawUy5S3q+yJEuZmvJrOr8sNHxV23unGg"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# LiveView template engine
config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
