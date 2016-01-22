defmodule SymphonyApi.Repo.Migrations.CreateVenue do
  use Ecto.Migration

  def change do
    create table(:venues) do
      add :name, :string
      add :address, :string
      add :phone, :string
      add :details, :string
      add :image_url, :string

      timestamps
    end

  end
end
