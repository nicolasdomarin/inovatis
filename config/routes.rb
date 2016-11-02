Rails.application.routes.draw do

  
  get '/panier' => 'panier#index'
  get '/panier/clear' => 'panier#clear'
  get '/panier/:id' => 'panier#add'

  devise_for :users do
    get '/user/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :users
  resources :categories
  resources :produits
  resources :paniers
  
  root to: "home#index"
end