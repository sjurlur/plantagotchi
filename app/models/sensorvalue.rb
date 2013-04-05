class Sensorvalue < ActiveRecord::Base
  attr_accessible :airTemp, :humidity, :light, :soilMoisture, :soilTemp, :created_at, :photo
  belongs_to :plant

  has_attached_file :photo, 
  	:path => Time.now.utc.to_s+".:extension",
	:url => ":s3_eu_url"
end
