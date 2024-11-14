defmodule Pocky.Repo do
  use Ecto.Repo,
    otp_app: :pocky,
    adapter: Ecto.Adapters.Postgres
end
