class AddTypeToLocations < ActiveRecord::Migration[6.0]
  def change
    change_table :locations do |t|
      t.string :location_type
    end
  end
end
