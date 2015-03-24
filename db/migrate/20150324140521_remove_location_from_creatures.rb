class RemoveLocationFromCreatures < ActiveRecord::Migration
  def change
  	remove_column :creatures, :location_id, :integer
  end
end
