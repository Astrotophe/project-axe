use Mix.Config

# Configure your database
config :project_axe, ProjectAxe.Repo,
  username: "postgres",
  password: "",
  database: "axe_test",
  hostname: "localhost",
  port: "32768",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :project_axe, ProjectAxeWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :bcrypt_elixir, :log_rounds, 4
