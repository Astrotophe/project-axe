# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :project_axe,
  ecto_repos: [ProjectAxe.Repo]

# Configures the endpoint
config :project_axe, ProjectAxeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mgw+b5Z/MHUzqZ6phB3vcKC3859FOXeFs5VAce4iZoqcGPU8BDI1WMwj2QYqhT75",
  render_errors: [view: ProjectAxeWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ProjectAxe.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
