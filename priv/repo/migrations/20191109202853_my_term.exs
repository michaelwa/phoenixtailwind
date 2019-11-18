defmodule Phoenixtailwind.Repo.Migrations.MyTerm do
  use Ecto.Migration

  def change do
    create table(:terms) do
      add :content, :binary
    end
  end
end
