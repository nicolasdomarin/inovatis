class Categorie < ActiveRecord::Base
	#Une catégorie a plusieurs produits, 
	has_many :produits, dependent :destroy

end
