Rails.application.routes.draw do
  root 'accueil#index'
  devise_for :clients
  resources :rooms
  
end
