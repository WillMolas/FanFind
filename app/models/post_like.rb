class PostLike < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_create_commit :notify_post_creator


  def notify_post_creator
    LikeNotification.with(post: self.post).deliver(self.post.user)
  end
end
