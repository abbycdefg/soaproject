class RemoveCreatureLocationXFromCreatures < ActiveRecord::Migration
  def change
    remove_column :creatures, :creature_location_x, :integer
  end
end
