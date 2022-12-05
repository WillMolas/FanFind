class Post < ApplicationRecord
  belongs_to :user
  has_many :post_likes, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_one_attached :photo
end
