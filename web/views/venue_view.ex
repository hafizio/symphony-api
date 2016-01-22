defmodule SymphonyApi.VenueView do
  use SymphonyApi.Web, :view

  def render("index.json", %{venues: venues}) do
    %{data: render_many(venues, SymphonyApi.VenueView, "venue.json")}
  end

  def render("show.json", %{venue: venue}) do
    %{data: render_one(venue, SymphonyApi.VenueView, "venue.json")}
  end

  def render("venue.json", %{venue: venue}) do
    %{id: venue.id,
      name: venue.name,
      address: venue.address,
      phone: venue.phone}
  end
end
