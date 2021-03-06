defmodule Phoenix_1.ArtistTest do
  use Phoenix_1.ModelCase

  alias Phoenix_1.Artist

  @valid_attrs %{age: 42, name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Artist.changeset(%Artist{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Artist.changeset(%Artist{}, @invalid_attrs)
    refute changeset.valid?
  end
end
