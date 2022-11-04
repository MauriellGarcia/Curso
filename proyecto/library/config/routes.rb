Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'bienvenida#index', as: 'bienvenida_index'
  #get 'bienvenida/index'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
