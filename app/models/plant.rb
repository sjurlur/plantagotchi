class Plant < ActiveRecord::Base
  attr_accessible :location, :name, :plant_type
  has_many :sensorvalues
  validates :name, :location, :plant_type, :presence => true
end
