Rails.application.routes.draw do
  root 'rooms#index'
  get 'admin/index'
  devise_for :clients
  resources :rooms
  resources :reservations
end
