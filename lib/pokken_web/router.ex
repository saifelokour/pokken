defmodule PokkenWeb.Router do
  use PokkenWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: PokkenWeb.Schema,
      interface: :simple,
      context: %{pubsub: PokkenWeb.Endpoint}

    # pipe_through :browser # Use the default browser stack

    # get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PokkenWeb do
  #   pipe_through :api
  # end
end
