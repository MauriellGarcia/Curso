Rails.application.routes.draw do
  root 'store#index', as: 'store_index'
  devise_for :users
  resources :users
  resources :line_items
  resources :carts
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
