class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :xcoor
      t.integer :ycoor

      t.timestamps null: false
    end
  end
end
