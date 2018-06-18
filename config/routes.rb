Rails.application.routes.draw do
  resources :posts
  devise_for :users
  devise_for :models
  root to: 'static#homepage'
end
