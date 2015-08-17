Rails.application.routes.draw do
  resources :pins
  root "page#index"

  resources :users, only: [:new, :create] do
    get '/users/new', to: 'user#new', as: :sign_up
  end

  resources :user_sessions, only: [:create, :destroy] do
    delete '/user_sessions/:id', to: 'user_sessions#destroy', as: :sign_out
    get '/user_sessions/new', to: 'user_sessions#new', as: :sign_in
  end
end

