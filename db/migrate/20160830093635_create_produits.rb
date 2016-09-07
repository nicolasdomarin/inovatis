class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
      t.string :libelle
      t.text :description
      t.decimal :prix

      t.timestamps null: false
    end
  end
end
