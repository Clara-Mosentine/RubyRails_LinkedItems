def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to @post, notice: 'Post was successfully created.'
  else
    render :new
  end
end