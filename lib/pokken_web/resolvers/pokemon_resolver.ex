defmodule PokkenWeb.PokemonResolver do
  alias Pokken.Pokemon

  def pokemon(_root, _args, _info) do
    pokemon = Pokemon.list_info()
    {:ok, pokemon}
  end
end
