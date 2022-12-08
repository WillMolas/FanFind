class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  has_one_attached :avatar
  after_create_commit :notify_message_recipient


  def notify_message_recipient
    NewMessage.with(chatroom: self.chatroom).deliver(self.chatroom.event.users - [self.user])
  end
end
