defmodule PhoenixtailwindWeb.PageControllerTest do
  use PhoenixtailwindWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Modern home"
  end
end
