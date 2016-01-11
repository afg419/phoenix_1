defmodule Phoenix_1.ArtistsController do
  use Phoenix_1.Web, :controller

  def index(conn, _params) do
    conn
    |> assign(:artists, Repo.all(Phoenix_1.Artist))
    |> render("index.html")
  end

  def new(conn, _params) do
    changeset = Phoenix_1.Artist.changeset(%Phoenix_1.Artist{})
    render conn, "new.html", artist: changeset
  end

  def create(conn, %{"artist" => artists_params}) do
    changeset = Phoenix_1.Artist.changeset(%Phoenix_1.Artist{}, artists_params)
    Repo.insert(changeset)
    redirect(conn, to: "/artists")
  end
end
