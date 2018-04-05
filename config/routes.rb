Rails.application.routes.draw do
  root "toppages#index"
  
  get "signup" => "users#new"
  resources :users, only: [:show, :new, :create]
end
