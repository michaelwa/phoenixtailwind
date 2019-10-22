defmodule PhoenixtailwindWeb.PageController do
  use PhoenixtailwindWeb, :controller
  alias Phoenixtailwind.Workcations

  def index(conn, _params) do
    # property = Workcations.get_property_by(beds: 2)
    properties = Workcations.list_properties()
    render(conn, "index.html", properties: properties)
  end
end
