defmodule TagTagWeb.PageController do
  use TagTagWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
