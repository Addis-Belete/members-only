Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :require, only: [:new, :create, :index]
  before_action :require_login, only: [:new, :create]
end
