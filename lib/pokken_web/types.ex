defmodule PokkenWeb.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Pokken.Repo

  @desc "Pokemon Profile"
  object :pokemon do
    field :name, :string
    field :style, :string
    field :type, :string
    field :moves, :move |> list_of, resolve: assoc(:moves)
  end

  @desc "Pokemon Move Info"
  object :move do
    field :block, :string
    field :category, :string
    field :damage, :string
    field :height, :string
    field :hit_duel, :string
    field :hit_field, :string
    field :impact, :string
    field :move_input, :string
    field :name, :string
    field :notes, :string
    field :phase, :string
    field :pokemon_id, :integer
    field :psp, :string
    field :type, :string
  end
end
