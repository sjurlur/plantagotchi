class DropPlantId < ActiveRecord::Migration
  def change
  	remove_column :sensorvalues, :plant_id
  end
end
