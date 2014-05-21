Rails.application.routes.draw do
  root :to => "users#show"

  resources :users
  get "sign_up" => "users#new"

  resource  :session, only: [:new, :create, :destroy]
  get "log_out" => "sessions#destroy"
  get "log_in"  => "sessions#new"

  resources :games, only: [:new, :index, :create, :show]
end