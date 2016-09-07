Rails.application.routes.draw do

  
  devise_for :users do
    get '/user/sign_out' => 'devise/sessions#destroy'
  end
  resources :users
  resources :categories
  resources :produits
  
  root to: "home#index"
end