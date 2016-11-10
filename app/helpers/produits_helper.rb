module ProduitsHelper

	def get_produit(id) 
        Produit.find_by_id(id)
	end
end
