class CreateUsercreatures < ActiveRecord::Migration
  def change
    create_table :usercreatures do |t|
      t.integer :creature_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
