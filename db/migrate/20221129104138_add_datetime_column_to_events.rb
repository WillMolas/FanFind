class AddDatetimeColumnToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :date_time, :datetime
  end
end
