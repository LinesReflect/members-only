class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @posts
    else
      render :new, status: :unprocessable_entry
    end
  end

  def index
    @posts = Post.all
  end
end
