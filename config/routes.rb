Rails.application.routes.draw do
  get 'admin/index'
  root 'rooms#index'
  devise_for :clients
  resources :rooms
  resources :reservations
end
