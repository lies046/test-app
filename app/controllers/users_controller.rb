class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post = Post.where(user_id: @user.id)
  end
end