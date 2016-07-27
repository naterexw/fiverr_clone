class AddAttachmentImageToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :services, :image
  end
end
