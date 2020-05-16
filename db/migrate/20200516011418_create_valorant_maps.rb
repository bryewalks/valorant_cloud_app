class CreateValorantMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :valorant_maps do |t|
      t.string :title

      t.timestamps
    end
  end
end
