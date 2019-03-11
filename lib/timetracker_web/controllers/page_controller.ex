defmodule TimetrackerWeb.PageController do
  use TimetrackerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
