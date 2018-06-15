Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root to: 'static#homepage'
end
