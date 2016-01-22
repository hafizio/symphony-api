defmodule SymphonyApi.ReviewView do
  use SymphonyApi.Web, :view

  attributes [:id, :venue_id, :content]

  def render("index.json", %{reviews: reviews}) do
    %{data: render_many(reviews, SymphonyApi.ReviewView, "review.json")}
  end

  def render("show.json", %{review: review}) do
    %{data: render_one(review, SymphonyApi.ReviewView, "review.json")}
  end

  def render("review.json", %{review: review}) do
    %{id: review.id,
      venue_id: review.venue_id,
      content: review.content}
  end
end
