defmodule SymphonyApi.EventView do
  use SymphonyApi.Web, :view

  attributes [:id, :venue_id, :name, :time]

  def render("index.json", %{events: events}) do
    %{data: render_many(events, SymphonyApi.EventView, "event.json")}
  end

  def render("show.json", %{event: event}) do
    %{data: render_one(event, SymphonyApi.EventView, "event.json")}
  end

  def render("event.json", %{event: event}) do
    %{id: event.id,
      name: event.name,
      venue_id: event.venue_id,
      time: event.time}
  end
end
