defmodule SymphonyApi.EventTest do
  use SymphonyApi.ModelCase

  alias SymphonyApi.Event

  @valid_attrs %{name: "some content", time: "2010-04-17 14:00:00"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Event.changeset(%Event{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Event.changeset(%Event{}, @invalid_attrs)
    refute changeset.valid?
  end
end
