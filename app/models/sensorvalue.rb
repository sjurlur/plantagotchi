class Sensorvalue < ActiveRecord::Base
  attr_accessible :airTemp, :humidity, :light, :soilMoisture, :soilTemp, :created_at, :photo
  belongs_to :plant

  has_attached_file :photo, 
  	:path => ":rails_root/public/system/attachment/:id_partition/:style/"+Time.now.to_s+".:extension",
	:url => "/system/:attachment/:id_partition/:style/"+Time.now.to_s+".:extension"
end
