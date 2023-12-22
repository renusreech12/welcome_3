defmodule Welcome1Web.PageController do
  use Welcome1Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
