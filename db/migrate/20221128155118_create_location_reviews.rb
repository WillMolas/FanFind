class CreateLocationReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :location_reviews do |t|
      t.text :comment
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
