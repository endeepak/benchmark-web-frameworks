defmodule Phoenixsite.Repo.Migrations.CreateQuestion do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :question_text, :string
      add :pub_date, :datetime

      timestamps
    end

  end
end
