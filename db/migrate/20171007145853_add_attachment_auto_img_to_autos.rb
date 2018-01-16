class AddAttachmentAutoImgToAutos < ActiveRecord::Migration
  def self.up
    change_table :autos do |t|
      t.attachment :auto_img
    end
  end

  def self.down
    remove_attachment :autos, :auto_img
  end
end
