class AddLikeCountToPostLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :post_likes, :like_count, :integer, default: 0
  end
end
