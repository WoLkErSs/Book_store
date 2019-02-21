Rails.application.routes.draw do
  devise_for :users

  root 'mainpage#homepage'
  resources :posts
  resources :category
  resources :pages
end
