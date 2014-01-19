defmodule Hububba.Post do
  use Ecto.Model

  queryable "posts" do
    field :title
    field :content
  end
end
