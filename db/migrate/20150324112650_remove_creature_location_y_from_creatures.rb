class RemoveCreatureLocationYFromCreatures < ActiveRecord::Migration
  def change
    remove_column :creatures, :creature_location_y, :integer
  end
end
