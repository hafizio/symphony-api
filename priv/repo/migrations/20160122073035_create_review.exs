defmodule SymphonyApi.Repo.Migrations.CreateReview do
  use Ecto.Migration

  def change do
    create table(:reviews) do
      add :content, :text
      add :venue_id, references(:venues, on_delete: :nothing)

      timestamps
    end
    create index(:reviews, [:venue_id])

  end
end
