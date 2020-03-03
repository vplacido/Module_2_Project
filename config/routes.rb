Rails.application.routes.draw do
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"  
  
  get "/homepage", to: "homepages#index"
  
  
  resources :listings
  resources :services
  resources :users
  resources :categories
  resources :reviews

  # get “/login”, to: “sessions#new”
  # post “/login”, to: “sessions#create”


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
