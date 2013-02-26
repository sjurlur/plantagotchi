class Sensorvalue < ActiveRecord::Base
  attr_accessible :airTemp, :humidity, :light, :soilMoisture, :soilTemp
  belongs_to :plant
end
