class AddPlantIdToSensorvalue < ActiveRecord::Migration
  def change
    add_column :sensorvalues, :plant_id, :string
  end
end
