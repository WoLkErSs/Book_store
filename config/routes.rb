Rails.application.routes.draw do
  resources :catalogs
  devise_for :users

  root 'mainpage#index'

  resources :posts
  resources :pages
end
