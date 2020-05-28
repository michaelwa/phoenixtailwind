defmodule Phoenixtailwind.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :middle_name, :string
    field :password_hash, :string
    field :phone_number, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :middle_name, :last_name, :email, :phone_number, :password_hash])
    |> validate_required([
      :first_name,
      :middle_name,
      :last_name,
      :email,
      :phone_number,
      :password_hash
    ])
  end
end
