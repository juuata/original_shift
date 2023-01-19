class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @name = current_user.first_name
    @posts = current_user.posts
    @user = User.find(params[:id])
  end
end
