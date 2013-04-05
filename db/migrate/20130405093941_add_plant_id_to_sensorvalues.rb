class AddPlantIdToSensorvalues < ActiveRecord::Migration
  def change
  	add_column :sensorvalues, :plant_id, :integer
  end
end
