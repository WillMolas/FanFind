class Event < ApplicationRecord
  belongs_to :location
  belongs_to :match
  belongs_to :user
  has_one :chatroom
  has_many :event_bookings, dependent: :destroy
  has_many :users, through: :event_bookings

  validates :match_time, presence: true
  validates :name, presence: true
  validates :description, presence: true
end
