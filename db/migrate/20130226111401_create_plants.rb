class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :location
      t.string :type

      t.timestamps
    end
  end
end
