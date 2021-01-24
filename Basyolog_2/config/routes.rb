Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get 'posts/search'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :posts
  get 'posts/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
