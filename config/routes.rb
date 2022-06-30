Rails.application.routes.draw do
  root to: 'home#top'
  get 'home/about'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:index, :show, :edit, :update]
end
