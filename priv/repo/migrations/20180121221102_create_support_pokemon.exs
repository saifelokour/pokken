defmodule Pokken.Repo.Migrations.CreateSupportPokemon do
  use Ecto.Migration

  def change do
    create table(:support_pokemon) do
      add :pair_id, :integer
      add :type, :string
      add :impact, :string
      add :damage, :string
      add :recovery, :string
      add :buff, :string
      add :debuff, :string
      add :description, :string

      timestamps()
    end

  end
end
