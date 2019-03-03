Rails.application.routes.draw do
  devise_for :users

  root 'mainpage#homepage'

  resources :order_items
  resources :posts
  resources :books
  resources :pages
end
