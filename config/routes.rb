Rails.application.routes.draw do

  resources :partners
  resources :rooms
  root 'movings#index'

  resources :shipments
  resources :users
  resources :movings
  resources :products



end
