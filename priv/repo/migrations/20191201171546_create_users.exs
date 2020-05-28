defmodule Phoenixtailwind.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :middle_name, :string
      add :last_name, :string
      add :email, :string
      add :phone_number, :string
      add :password_hash, :string

      timestamps()
    end
  end
end
