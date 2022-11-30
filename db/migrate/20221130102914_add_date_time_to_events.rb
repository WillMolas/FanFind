class AddDateTimeToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :match_time, :time
  end
end
