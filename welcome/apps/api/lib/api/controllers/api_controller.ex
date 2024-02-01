defmodule Api.ApiController do
  use Api, :controller

  def hello(conn, _params) do
    json(conn, Welcomer.hello())
  end
end
