class RemoveTypeAndDescriptionFromLocations < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :type, :string
    remove_column :locations, :description, :text
  end
end
