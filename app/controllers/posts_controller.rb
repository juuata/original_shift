class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    #if @post.save
      redirect_to root_path
    #else
      #render :new
    #end
  end


  private

  def post_params
    params.require(:post).permit(:desired_time_id)#merge(user: current_user)
  end
end
