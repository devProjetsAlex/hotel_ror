Rails.application.routes.draw do
  root 'rooms#index'
  devise_for :clients
  resources :rooms
  
end
