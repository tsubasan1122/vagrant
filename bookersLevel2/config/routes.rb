Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :new, :edit, :create, :update]
  resources :books, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  root 'books#index'
  get 'top/' => 'home#top'
  get 'home/about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
