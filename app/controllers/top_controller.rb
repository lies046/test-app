class TopController < ApplicationController
  def index
    @users = User.all
    @categories = Category.all
  end
end