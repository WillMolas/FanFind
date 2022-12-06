# To deliver this notification:
#
# NewMessage.with(post: @post).deliver_later(current_user)
# NewMessage.with(post: @post).deliver(current_user)

class NewMessage < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  param :chatroom


  # Define helper methods to make rendering easier.
  #
  def message
    "You have a new message in a chatroom"
  end

  #
  def url
    event_chatroom_path(params[:chatroom].event, params[:chatroom])
  end
end
