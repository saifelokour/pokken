defmodule Pokken.Repo.Migrations.CreateSynergy do
  use Ecto.Migration

  def change do
    create table(:synergy) do
      add :gauge_size, :integer
      add :duration, :integer

      timestamps()
    end

  end
end
