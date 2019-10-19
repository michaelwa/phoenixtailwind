defmodule PhoenixtailwindWeb.Router do
  use PhoenixtailwindWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixtailwindWeb do
    pipe_through :browser

    get "/workcation", WorkcationController, :index
    live("/counter", CounterLive)
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixtailwindWeb do
  #   pipe_through :api
  # end
end
