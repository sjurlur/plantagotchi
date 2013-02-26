class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :plant_type
      t.string :location

      t.timestamps
    end
  end
end
