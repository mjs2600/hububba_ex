Post =
  initialize: ->
    newPosts = @newPost.map(@getPost)
    newPosts.onValue((val) -> $.post "/", val)

  newPost: $("#new-post").asEventStream("click")

  getPost: ->
    title: $("#new-title").val()
    content: $("#new-content").val()

Post.initialize()
