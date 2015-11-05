Rails.application.routes.draw do
  devise_for :users
  resources :analizes
  resources :customers
  resources :products
  root 'analizes#index'
end
