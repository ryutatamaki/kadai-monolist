Rails.application.routes.draw do
  root "toppages#index"
  
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
  
  get "signup" => "users#new"
  
  get "rankings/want" => "rankings#want"
  
  resources :users, only: [:show, :new, :create]
  
  resources :items, only: [:show, :new]
  resources :ownerships, only: [:create, :destroy]
end

