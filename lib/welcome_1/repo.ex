defmodule Welcome1.Repo do
  use Ecto.Repo,
    otp_app: :welcome_1,
    adapter: Ecto.Adapters.Postgres
end
