json.extract! produit, :id, :libelle, :description, :prix, :created_at, :updated_at
json.url produit_url(produit, format: :json)