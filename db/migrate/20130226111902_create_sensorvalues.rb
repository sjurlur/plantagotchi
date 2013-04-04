class CreateSensorvalues < ActiveRecord::Migration
  def change
    create_table :sensorvalues do |t|
      t.float :soilMoisture
      t.float :light
      t.float :soilTemp
      t.float :airTemp
      t.float :humidity
      t.integer :plant_id

      t.timestamps
    end
  end
end
