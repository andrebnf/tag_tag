defmodule MyAppWeb.UserView do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div class="a-class">
      <div>
        <button class="btn btn-primary" phx-click="i_change">Change!</button>
      </div>
      <div>
        <%= @test_string %>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, assign(socket, test_string: "I'll change")}
  end

  def handle_event("i_change", _value, socket) do
    # do the deploy process
    {:noreply, assign(socket, test_string: "I changed!")}
  end

end
