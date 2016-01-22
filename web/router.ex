defmodule SymphonyApi.Router do
  use SymphonyApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json-api"]
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/", SymphonyApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", SymphonyApi do
    pipe_through :api

    resources "/venues", VenueController, except: [:new, :edit] do
      resources "/events", EventController, except: [:new, :edit]
      resources "/reviews", ReviewController, except: [:new, :edit]
    end
  end
end
