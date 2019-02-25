Rails.application.routes.draw do
  devise_for :users

  root 'mainpage#homepage'

  resources :posts
  resources :books
  resources :pages
end
