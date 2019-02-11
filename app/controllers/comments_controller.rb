class CommentsController < ApplicationController
  def new
    @comment=Comment.new
end

def create
  @comment = Comment.new(body: params[:comment][:body])
  @comment.user_id = current_user.id
  @comment.topic_id=params[:comment][:topic_id]

  if @comment.save
    redirect_to topics_path
  else
    render :new
  end
end
end
