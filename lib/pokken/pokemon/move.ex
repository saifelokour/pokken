defmodule Pokken.Pokemon.Move do
  use Ecto.Schema
  import Ecto.Changeset
  alias Pokken.Pokemon.Move

  schema "moves" do
    field :block, :string
    field :category, :string
    field :damage, :string
    field :heigh, :string
    field :hit_duel, :string
    field :hit_field, :string
    field :impact, :string
    field :move_input, :string
    field :name, :string
    field :notes, :string
    field :phase, :string
    field :psp, :string
    field :type, :string
    belongs_to :info, Pokken.Pokemon.Info, foreign_key: :pokemon_id

    timestamps()
  end

  @doc false
  def changeset(%Move{} = move, attrs) do
    move
    |> cast(attrs, [:pokemon_id, :name, :category, :move_input, :type, :phase, :impact, :block, :hit_field, :hit_duel, :psp, :damage, :heigh, :notes])
    |> validate_required([:pokemon_id, :name, :category, :move_input, :type, :phase, :impact, :block, :hit_field, :hit_duel, :psp, :damage, :heigh, :notes])
    |> foreign_key_constraint(:pokemon_id)
  end
end
