# To deliver this notification:
#
# LikeNotification.with(post: @post).deliver_later(current_user)
# LikeNotification.with(post: @post).deliver(current_user)

class LikeNotification < Noticed::Base
  # Add your delivery methods
  deliver_by :database

  # Add required params
  param :post

  # Define helper methods to make rendering easier.
  #
  def message
    "You have a new like on your post"
  end

  def url
    post_post_comments_path(params[:post])
  end
end
