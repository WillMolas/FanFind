class Event < ApplicationRecord
  belongs_to :location
  belongs_to :match
  belongs_to :user
  has_one :chatroom
  has_many :event_bookings
end
