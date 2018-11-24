class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.create(post_params)
    @post.image.attach(params[:post][:image])
    redirect_to '/'
  end

  def edit
  end

  def update
  end

  def destory
  end

  private

  def post_params
    params.require(:post).permit(:description, :quality, :postage_details, :image)
  end
end
