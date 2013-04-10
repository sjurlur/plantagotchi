class Sensorvalue < ActiveRecord::Base
  attr_accessible :airTemp, :humidity, :light, :soilMoisture, :soilTemp, :created_at, :photo
  belongs_to :plant

  has_attached_file :photo, 
  	:path => ":id.:extension", 
	:url => ":s3_eu_url"
end
