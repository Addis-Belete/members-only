Rails.application.routes.draw do
  get "user/index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :posts, only: [:new, :create, :index]
end
