class ChngVarcharToInt < ActiveRecord::Migration
  def change
  	change_column :sensorvalues, :plant_id, :integer
  end

end
