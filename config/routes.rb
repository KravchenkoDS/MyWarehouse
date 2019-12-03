Rails.application.routes.draw do

  root 'movings#index'

  resources :shipments
  resources :users
  resources :movings
  resources :products



end
