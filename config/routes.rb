Rails.application.routes.draw do
  get 'orders/index'
  # get 'sampler/show', :path => '/sampler'
  get 'products/index'
  get 'products/show'
  get 'accounts/show'
  get '/home', to: "pages#home"
  get 'products/producers'
  get 'products/machines'
  get 'products/instruments'
  get 'products/other_kits'
  
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Solves "No route matches [GET] '/users/sign_out'"
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :products, only: [:index, :show]
  resources :sampler, only: [:index], :path => '/sampler'
  resources :sampler, only: [:show], :path => '/sampler/show'
  resources :carts, only: [:index], :path => '/user/cart'
  resources :orders, only: [:index], :path => '/user/order'

  root to: "pages#home"
end
