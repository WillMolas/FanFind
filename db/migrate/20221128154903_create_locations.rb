class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :address
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
