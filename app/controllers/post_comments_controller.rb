class PostCommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @post_comments = @post.post_comments
    @post_comment = PostComment.new
  end

  # def show
  #   @post_comments = PostComment.find(params[:id])
  #   @post_comment = PostComment.new
  # end

  # def show
  #   @post_comments = PostComment.find(params[:id])
  #   @post_comment = PostComment.new
  # end

  def new
    @post = Post.find(params[:post_id])
    @post_comment = PostComment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @post_comment = PostComment.new(post_comment_params)
    @post_comment.post = @post
    @post_comment.user = current_user

    if @post_comment.save
      redirect_to @post_comment.post
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def update
  #   @post_comment = PostComment.find(params[:id])
  #   @post_comment.update(post_comment_params)
  #   @post_comment = @post_comment.post
  #   redirect_to post_comment_path
  # end

  def destroy
    @post_comment = Event.find(params[:id])
    @post_comment.destroy
    redirect_to posts_path, status: :see_other
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:content, :user_id, :post_id)
  end

end
