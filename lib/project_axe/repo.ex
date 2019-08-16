defmodule ProjectAxe.Repo do
  use Ecto.Repo,
    otp_app: :project_axe,
    adapter: Ecto.Adapters.Postgres
end
