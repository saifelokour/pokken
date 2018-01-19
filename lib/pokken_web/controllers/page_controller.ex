defmodule PokkenWeb.PageController do
  use PokkenWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
