class PostsController < ApplicationController
  def index
    respond_with Post.all
  end

  def create
    respond_with Post.create(post_params)
  end

  def show
    repsond_with Post.find(params[:id])
  end

  def upvote
    post = Post.find(params[:id])
post.increment!(:upvotes)

respond_with post
  end
end
