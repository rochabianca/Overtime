Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :models
      resources :posts
      resources :admin_users

      root to: "users#index"
    end
  resources :posts
  devise_for :users, skip: [:registrations]
  devise_for :models
  root to: 'static#homepage'
end
