defmodule TagTagWeb.PageController do
  use TagTagWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn, MyAppWeb.UserView, session: %{})
  end
end
