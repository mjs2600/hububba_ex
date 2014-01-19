defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
  end

  # It is common to break your Dynamo into many
  # routers, forwarding the requests between them:
  # forward "/posts", to: PostsRouter

  get "/" do
    conn = conn.assign(:title, "Welcome to Hububba")
    conn = conn.assign(:posts, Hububba.Post.Queries.most_recent)
    render conn, "index.html"
  end

  post "/" do
    title = conn.params["title"]
    content = conn.params["content"]
    post = Hububba.Post.new(title: title, content: content)
    Repo.create post

    conn.resp 200, "{}" #Hububba.Post.Queries.most_recent
  end
end
