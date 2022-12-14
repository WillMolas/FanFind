class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy
  has_many :event_bookings, dependent: :destroy
  has_many :messages
  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :post_likes, dependent: :destroy
  has_many :location_reviews
  has_many :notifications, as: :recipient, dependent: :destroy

  has_one_attached :avatar
end
