Rails.application.routes.draw do
  devise_for :users
  root "top#index"

  resources :posts, except: [:index]
  resources :users
  resources :categories
end
