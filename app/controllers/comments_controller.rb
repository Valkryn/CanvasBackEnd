class CommentsController < ApplicationController

  def index
      @comments = Comment.all
      render json:@comments
  end

  def show
    @comment = Comment.find(params[:id])
    render json:@comment
  end

  def create
    @comment = Comment.create(
      content: params[:content],
      user_id: User.find_by(id:params[:user_id]).id,
      post_id: Post.find_by(id:params[:post_id]).id,
    )
      render json:@comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json:@comment
  end

end

# User.find_by(id:params[:user_id])
