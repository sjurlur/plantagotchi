class Plant < ActiveRecord::Base
  attr_accessible :location, :name, :type
  has_many :sensorvalues
end
