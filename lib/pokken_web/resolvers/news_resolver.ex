defmodule PokkenWeb.NewsResolver do
  alias Pokken.News

  def links(_root, _args, _info) do
    links = News.list_links()
    {:ok, links}
  end
end