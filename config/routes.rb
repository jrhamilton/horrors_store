Rails.application.routes.draw do
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'login', to: 'sessions#new', as: 'login'

  resources :sessions, :only => [:new, :create, :destroy]
  resources :users
  resources :products
  match('/products_uploads', {:via => :post, :to => "product_uploads#create"})
  #resources :product_uploads

  root to: "users#index"
end
