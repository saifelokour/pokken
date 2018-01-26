defmodule Pokken.Repo.Migrations.CreateMoves do
  use Ecto.Migration

  def change do
    create table(:moves) do
      add :pokemon_id, :integer
      add :name, :string
      add :category, :string
      add :move_input, :string
      add :type, :string
      add :phase, :string
      add :impact, :string
      add :block, :string
      add :hit_field, :string
      add :hit_duel, :string
      add :psp, :string
      add :damage, :string
      add :height, :string
      add :notes, :string

      timestamps()
    end

  end
end
