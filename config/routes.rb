Rails.application.routes.draw do
  resources :stocks

  resources :companies do
    collection { post :import }
  end

  resources :movies

  resources :democlasses

  resources :prices

  resources :movements

  resources :positions

  resources :accounts

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  get "cart" => "cart#show"
  get "cart/add/:id" => "cart#add", :as => :add_to_cart
  post "cart/remove/:id" => "cart#remove", :as => :remove_from_cart
  post "cart/checkout" => "cart#checkout", :as => :checkout

  get 'signup' => 'users#new', :as => :signup
  get 'logout' => 'sessions#destroy', :as => :logout
  get 'login' => 'sessions#new', :as => :login
  resources :sessions
  resources :users
  resources :products

  root :to => "products#index"
end
