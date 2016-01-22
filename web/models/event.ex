defmodule SymphonyApi.Event do
  use SymphonyApi.Web, :model

  schema "events" do
    field :name, :string
    field :time, Ecto.DateTime
    belongs_to :venue, SymphonyApi.Venue

    timestamps
  end

  @required_fields ~w(name time)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
