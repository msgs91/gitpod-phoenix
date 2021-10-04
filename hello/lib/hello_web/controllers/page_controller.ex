defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
    # render(conn, "index.html")
  end
end
