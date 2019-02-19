Rails.application.routes.draw do
  resources :catalogs
  devise_for :users

  root 'mainpage#homepage'
  resources :posts
  resources :pages
end
