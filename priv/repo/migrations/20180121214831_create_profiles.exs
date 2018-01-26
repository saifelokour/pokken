defmodule Pokken.Repo.Migrations.CreateInfo do
  use Ecto.Migration

  def change do
    create table(:profiles) do
      add :name, :string
      add :type, :string
      add :style, :string
      add :synergy_duration, :integer
      add :synergy_gauge_size, :integer

      timestamps()
    end

  end
end
