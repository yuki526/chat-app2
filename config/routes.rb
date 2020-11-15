Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"

  resources :users, only: [:new, :update, :edit]
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :messages, only: [:index, :new, :create ]
  end
end
