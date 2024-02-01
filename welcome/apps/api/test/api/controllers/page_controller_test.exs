defmodule Api.PageControllerTest do
  use Api.ConnCase

  test "GET /web", %{conn: conn} do
    conn = get(conn, "/web")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
