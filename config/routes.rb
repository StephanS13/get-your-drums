Rails.application.routes.draw do
  get 'order1s/index'
  get 'order1s/show'
  get 'order1s/new'
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
  # get 'carts/show'

  # get 'carts/:id' => "carts#show", as: "cart"
  get 'cart' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"


  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"
  
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Solves "No route matches [GET] '/users/sign_out'"
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :products, only: [:index, :show]
  resources :sampler, only: [:index], :path => '/sampler'
  resources :sampler, only: [:show], :path => '/sampler/show'
  resources :carts, only: [:show], :path => '/user/cart'
  resources :orders, only: [:index], :path => '/user/order'
  resources :order_items
  resources :order1s

  root to: "pages#home"
end
