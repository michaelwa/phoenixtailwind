defmodule Phoenixtailwind.Repo do
  use Ecto.Repo,
    otp_app: :phoenixtailwind,
    adapter: Ecto.Adapters.Postgres
end
