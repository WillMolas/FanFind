class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts = Post.order('updated_at DESC')
    set_meta_tags title: 'Community'
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
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
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
