defmodule Pokken.Repo.Migrations.CreateInfo do
  use Ecto.Migration

  def change do
    create table(:info) do
      add :name, :string
      add :type, :string
      add :style, :string

      timestamps()
    end

  end
end
