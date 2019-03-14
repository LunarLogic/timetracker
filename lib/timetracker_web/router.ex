defmodule TimetrackerWeb.Router do
  use TimetrackerWeb, :router

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

  scope "/", TimetrackerWeb do
    pipe_through :browser

    get "/", WorkBlockController, :index
    post "/start", WorkBlockController, :start
  end

  # Other scopes may use custom stacks.
  # scope "/api", TimetrackerWeb do
  #   pipe_through :api
  # end
end
