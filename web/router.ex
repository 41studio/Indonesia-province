defmodule IndonesiaProvinces.Router do
  use IndonesiaProvinces.Web, :router

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

  scope "/", IndonesiaProvinces do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  forward "/explorer", Absinthe.Plug.GraphiQL, schema: IndonesiaProvinces.Schema

  # scope "/api", IndonesiaProvinces do
  #   pipe_through :api

  #   match "/provinces", GraphQL.Plug.Endpoint, schema: {GraphQL.Schema.Province, :schema}
  # end
end
