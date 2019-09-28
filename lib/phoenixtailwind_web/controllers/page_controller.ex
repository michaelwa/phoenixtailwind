defmodule PhoenixtailwindWeb.PageController do
  use PhoenixtailwindWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
