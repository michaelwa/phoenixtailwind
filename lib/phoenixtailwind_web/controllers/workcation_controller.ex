defmodule PhoenixtailwindWeb.WorkcationController do
  use PhoenixtailwindWeb, :controller
  alias Phoenixtailwind.Workcations

  def index(conn, _params) do
    destinations = Workcations.list_destinations()
    render(conn, "index.html", destinations: destinations)
  end
end
