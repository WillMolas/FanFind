# To deliver this notification:
#
# CommentNotification.with(post: @post).deliver_later(current_user)


class CommentNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params

  param :post

  # Define helper methods to make rendering easier.

  def message
    "You have a new comment on your post"
  end

  def url
    post_path(params[:post])
  end
end
