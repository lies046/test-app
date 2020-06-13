class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, category_ids: []).merge(user_id: current_user.id)
    end
end
