defmodule Pokken.Pokemon.SupportPokemon do
  use Ecto.Schema
  import Ecto.Changeset
  alias Pokken.Pokemon.SupportPokemon


  schema "support_pokemon" do
    field :buff, :string
    field :damage, :string
    field :debuff, :string
    field :description, :string
    field :impact, :string
    field :pair_id, :integer
    field :recovery, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(%SupportPokemon{} = support_pokemon, attrs) do
    support_pokemon
    |> cast(attrs, [:pair_id, :type, :impact, :damage, :recovery, :buff, :debuff, :description])
    |> validate_required([:pair_id, :type, :impact, :damage, :recovery, :buff, :debuff, :description])
  end
end
