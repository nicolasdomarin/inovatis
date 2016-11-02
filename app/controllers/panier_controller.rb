class PanierController < ApplicationController
  def add
  	id = params[:id]
    # Si le panier est déja crée, on utilise le panier existant, sinon on en crée un autre.
      if session[:panier] then 
        panier = session[:panier]
      else
        session[:panier] = {}
        panier = session[:panier]
      end
      # Si le produit est déja ajouté au panier, on incremente la quantité.
      if panier[id] then
        panier[id] = panier[id] + 1
      else
        panier[id] = 1 
      end
      redirect_to :action => :index
  end

  def clear
    session[:panier] = nil
    redirect_to :action => :index
  end

    def index
    if session[:panier] then
      @panier = session[:panier] 
    else
      @panier = {}
    end
  end
end
