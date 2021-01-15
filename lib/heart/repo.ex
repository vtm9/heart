defmodule H.Repo do
  use Ecto.Repo,
    otp_app: :heart,
    adapter: Ecto.Adapters.Postgres
end
