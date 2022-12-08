class PostsController < ApplicationController
  def index
    @posts = Post.all
    # @post = Post.find(params[:id])
    @posts = Post.order('updated_at DESC')

    if params[:query].present?
      sql_query = 'content ILIKE :query OR users.team ILIKE :query'
      @posts = @posts.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    end

    if params[:team].present?
      @posts = @posts.where(user_id: params[:team])
    end

    if params[:user].present?
      @posts = @posts.where(user_id: params[:user])
    end

    respond_to do |format|
      format.html
      format.text { render partial: "posts/feed", locals: { posts: @posts }, formats: [:html] }
    end

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
    if @post.save
      redirect_to posts_path
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
