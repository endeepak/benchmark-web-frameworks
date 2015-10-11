defmodule Phoenixsite.QuestionTest do
  use Phoenixsite.ModelCase

  alias Phoenixsite.Question

  @valid_attrs %{pub_date: "2010-04-17 14:00:00", question_text: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Question.changeset(%Question{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Question.changeset(%Question{}, @invalid_attrs)
    refute changeset.valid?
  end
end
