class RemoveDatetimeColumnsFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :date_time, :string
    remove_column :events, :datetime, :string
  end
end
