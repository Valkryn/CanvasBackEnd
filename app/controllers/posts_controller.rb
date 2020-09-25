class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json:@posts
  end

  def create
    byebug
  end

  def show
    @post = Post.find(params[:id])
    render json:@post
  end

  def update
    @post = Post.find(params[:id])
    @post.update(views: params[:views])
    render json:@post
  end

end
