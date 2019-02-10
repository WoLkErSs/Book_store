Rails.application.routes.draw do
  devise_for :users
  root 'mainpage#index'
  resources :posts
  resources :pages
end
