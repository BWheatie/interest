Rails.application.routes.draw do
  resources :pins
  root "page#index"
end
