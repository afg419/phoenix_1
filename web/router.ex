defmodule Phoenix_1.Router do
  use Phoenix_1.Web, :router

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

  scope "/", Phoenix_1 do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/artists", ArtistsController, only: [:index, :new, :create]
  end



  # Other scopes may use custom stacks.
  # scope "/api", Phoenix_1 do
  #   pipe_through :api
  # end
end
