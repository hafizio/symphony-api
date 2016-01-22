defmodule SymphonyApi.VenueView do
  use SymphonyApi.Web, :view

  attributes [:id, :name, :phone, :image_url, :address, :details]
  has_many :events, link: "/venues/:id/events"
  has_many :reviews, link: "/venues/:id/reviews"

  def render("index.json", %{venues: venues}) do
    %{data: render_many(venues, SymphonyApi.VenueView, "venue.json")}
  end

  def render("show.json", %{venue: venue}) do
    %{data: render_one(venue, SymphonyApi.VenueView, "venue.json")}
  end

  def render("venue.json", %{venue: venue}) do
    %{id: venue.id,
      name: venue.name,
      phone: venue.phone,
      image_url: venue.image_url,
      address: venue.address,
      details: venue.details}
  end
end
