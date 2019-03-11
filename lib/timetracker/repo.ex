defmodule Timetracker.Repo do
  use Ecto.Repo,
    otp_app: :timetracker,
    adapter: Ecto.Adapters.Postgres
end
