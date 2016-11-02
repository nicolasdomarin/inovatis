class Produit < ActiveRecord::Base
	after_update :reprocess
	belongs_to :categorie
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
										:url  => "/assets/products/:id/:style/:basename.:extension",
										:path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
	# validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	# validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
  self.per_page = 10
end
