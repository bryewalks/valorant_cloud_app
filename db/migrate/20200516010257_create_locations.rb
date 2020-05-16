class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.integer :valorant_map_id
      t.integer :character_id
      t.string :title
      t.integer :x_axis
      t.integer :y_axis
      t.integer :angle

      t.timestamps
    end
  end
end
