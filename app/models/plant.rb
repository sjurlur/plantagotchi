class Plant < ActiveRecord::Base
  attr_accessible :location, :name, :plant_type
  has_many :sensorvalues
end
