Rails.application.routes.draw do
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

  # solves "No route matches [GET] "/users/sign_out""
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :products, only: [:index, :show]
  resources :sampler, only: [:index], :path => '/sampler'

  root to: "pages#home"
end
