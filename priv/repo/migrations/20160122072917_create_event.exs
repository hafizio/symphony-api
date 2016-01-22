defmodule SymphonyApi.Repo.Migrations.CreateEvent do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :name, :string
      add :time, :datetime
      add :venue_id, references(:venues, on_delete: :nothing)

      timestamps
    end
    create index(:events, [:venue_id])

  end
end
