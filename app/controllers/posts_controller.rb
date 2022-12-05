class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    if current_user
      @post = Post.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:content, :photo)
  end
end
