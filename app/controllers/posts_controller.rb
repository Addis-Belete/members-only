class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.post.build
  end

  def create
    @post = current_user.post.build(post_params)
    if @post.save
      redirect_to posts_url
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
