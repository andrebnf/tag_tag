defmodule TagTagWeb.PageController do
  use TagTagWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn, TagTagWeb.GameLive, session: %{})
  end
end
