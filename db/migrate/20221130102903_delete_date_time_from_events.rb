class DeleteDateTimeFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :date_time, :datetime
  end
end
