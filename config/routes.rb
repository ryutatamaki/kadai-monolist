Rails.application.routes.draw do
  root "toppages#index"
  
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessiosn#destroy"
  
  get "signup" => "users#new"
  resources :users, only: [:show, :new, :create]
  
  resources :items, only: [:show, :new]
  resources :ownerships, only: [:create, :destroy]
end

