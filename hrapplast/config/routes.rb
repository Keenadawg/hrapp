Rails.application.routes.draw do
  
  get 'holidays/new'

  get 'holidays/index'

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  
  resources :users 
  resources :sessions
  resources :holidays 
  
  root to: 'users#new'
  
end