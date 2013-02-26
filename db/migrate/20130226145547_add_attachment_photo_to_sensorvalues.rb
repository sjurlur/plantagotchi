class AddAttachmentPhotoToSensorvalues < ActiveRecord::Migration
  def self.up
    change_table :sensorvalues do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :sensorvalues, :photo
  end
end
