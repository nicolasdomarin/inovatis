class AddAttachmentPhotoToProduits < ActiveRecord::Migration
  def self.up
    change_table :produits do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :produits, :photo
  end
end
