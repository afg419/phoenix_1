defmodule Phoenix_1.Repo.Migrations.CreateArtist do
  use Ecto.Migration

  def change do
    create table(:artists) do
      add :name, :string
      add :age, :integer

      timestamps
    end

  end
end
