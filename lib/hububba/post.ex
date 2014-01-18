defmodule Hububba.Post do
  use Ecto.Model

  queryable "posts" do
    field :title
    field :content
  end

  def all do
    Repo.all(__MODULE__)
  end

  def create(args//[]) do
    post = Hububba.Post.new(args)
    Repo.create post
  end
end
