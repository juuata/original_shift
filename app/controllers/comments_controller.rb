class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def index
    @comments = Comments.all
    
  end

  def create
    @comment = Comments.new(comment_params)
    if @message.save
      redirect_to root_path(@comment)
    else
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id)
  end
end
