defmodule Welcome1.Repo.Migrations.AddTopics do
  use Ecto.Migration

  def change do
  create table (:topics) do
   add :title ,:string
  end
  end
end
