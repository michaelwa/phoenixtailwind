defmodule PhoenixtailwindWeb.WorkcationController do
  use PhoenixtailwindWeb, :controller
  alias Phoenixtailwind.Places

  def index(conn, _params) do
    destinations = Phoenixtailwind.Workcations.list_destinations()
    render(conn, "index.html", destinations: destinations)
  end
end
