defmodule IndonesiaProvinces.PageController do
  use IndonesiaProvinces.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
