defmodule PocOban.Repo do
  use Ecto.Repo,
    otp_app: :poc_oban,
    adapter: Ecto.Adapters.Postgres
end
