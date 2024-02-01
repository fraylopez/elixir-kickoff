defmodule Api.PageController do
  use Api, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
