defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def url do
    "ecto://postgres:postgres@localhost/hububba"
  end

  def priv do
    app_dir(:hububba, "priv/repo")
  end
end
