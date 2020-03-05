Rails.application.routes.draw do
  get "/homepage", to: "homepages#index"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"  
  
  # get "/profile", to: "profile#index"
  
  
  resources :listings
  resources :services
  resources :users
  resources :reviews
  resources :categories, only: [:index, :show]
  resources :carts, only: [:show, :new, :create]
  resources :profile, only: [:show]

  # get “/login”, to: “sessions#new”
  # post “/login”, to: “sessions#create”


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
