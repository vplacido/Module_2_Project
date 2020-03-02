Rails.application.routes.draw do
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"  
  
  
  
  
  resources :listings
  resources :services
  resources :users

  # get “/login”, to: “sessions#new”
  # post “/login”, to: “sessions#create”


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
