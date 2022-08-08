# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'users#index'
  resources :conversions
  resources :groups
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
