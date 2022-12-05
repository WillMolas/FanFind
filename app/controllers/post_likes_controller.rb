class PostLikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post_like = PostLike.new
    @post_like.post = @post
    @post_like.user = current_user

    if @post_like.save
      redirect_to posts_path, :notice => "Liked the post"
    end
  end

end
