defmodule Phoenixsite.Question do
  use Phoenixsite.Web, :model

  schema "questions" do
    field :question_text, :string
    field :pub_date, Ecto.DateTime

    timestamps
  end

  @required_fields ~w(question_text pub_date)
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
