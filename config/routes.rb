Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"

  resources :users, only: [:new, :update, :edit]
  resources :rooms, only: [:new, :create]
end
