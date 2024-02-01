defmodule Api.ApiControllerTest do
  use Api.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert json_response(conn, 200) =~ "Hello, world!"
  end
end
