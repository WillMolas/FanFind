class Event < ApplicationRecord
  belongs_to :location
  belongs_to :match
  belongs_to :user
  has_one :chatroom, dependent: :destroy
  has_many :event_bookings, dependent: :destroy
  has_many :users, through: :event_bookings

  validates :match_time, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true

  after_create :create_chatroom

  def create_chatroom
    Chatroom.create(event: self)
  end
end
