class CommentsController < ApplicationController

  def create
    @comment = Post.includes(:comments).find(params[:post_id]).comments.create(comment_params)
  end

  def upvote
    @comment = Post.includes(:comments).find(params[:post_id]).comments.find(params[:id])
    @comment.increment!(:upvotes)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
