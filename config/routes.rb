Rails.application.routes.draw do
  resources :orders
  resources :users
  resources :order_items
  resources :items
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
