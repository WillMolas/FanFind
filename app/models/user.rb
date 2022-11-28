class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :events
  has_many :event_bookings
  has_many :messages
  has_many :posts
  has_many :post_comments
  has_many :post_likes
  has_many :location_reviews

  has_one_attached :avatar


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
