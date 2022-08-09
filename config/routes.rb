Rails.application.routes.draw do
  devise_for :users

  root to: 'splash#index'
  # resources :conversions
  resources :groups do
    resources :conversions
    resources :group_conversions
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
