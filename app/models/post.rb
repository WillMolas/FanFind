class Post < ApplicationRecord
  belongs_to :user
  has_many :post_likes
  has_many :post_comments
end
