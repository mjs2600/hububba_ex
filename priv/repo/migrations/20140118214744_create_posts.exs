defmodule Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def up do
    "CREATE TABLE IF NOT EXISTS posts(id serial primary key, title text, content text)"
  end

  def down do
    "DROP TABLE posts"
  end
end
