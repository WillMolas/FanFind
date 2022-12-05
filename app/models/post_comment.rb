class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  # belongs_to :recipient, class_name: "User"

  after_create_commit :notify_post_creator


  def notify_post_creator
    CommentNotification.with(post: self.post).deliver(self.post.user)
  end

end
