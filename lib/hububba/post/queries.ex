defmodule Hububba.Post.Queries do
  use Ecto.Query

  def most_recent(results//10) do
    query = from p in Hububba.Post,
      order_by: [desc: p.id],
      limit: results,
      select: p

    Repo.all query
  end

  def all do
    Repo.all(Hububba.Post)
  end

  def create(args//[]) do
    post = Hububba.Post.new(args)
    Repo.create post
  end
end
