defmodule PokkenWeb.Schema do
  use Absinthe.Schema
  alias PokkenWeb.PokemonResolver

  import_types PokkenWeb.Schema.Types

  query do
    field :pokemon_list, :pokemon |> non_null |> list_of |> non_null do
      resolve &PokemonResolver.pokemon/3
    end
  end
end
