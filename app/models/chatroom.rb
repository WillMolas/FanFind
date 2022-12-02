class Chatroom < ApplicationRecord
  belongs_to :event
  has_many :messages, dependent: :destroy
end
