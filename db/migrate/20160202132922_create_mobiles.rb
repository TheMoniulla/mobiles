class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|
      t.string :name
      t.string :brand
      t.boolean :touchscreen
      t.integer :display_size
      t.integer :weight
      t.integer :price
      t.timestamps
    end
  end
end
