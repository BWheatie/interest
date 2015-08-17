Rails.application.routes.draw do
  resources :pins
  resources :users, only: [:new, :create]
  resource :user_session, only: [:new, :create, :destroy]
  root "page#index"
end

