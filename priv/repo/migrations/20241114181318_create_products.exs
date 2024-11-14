defmodule Pocky.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :title, :string
      add :price, :integer
      add :body, :text

      timestamps(type: :utc_datetime)
    end
  end
end
