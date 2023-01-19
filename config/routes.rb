Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  get 'posts/index'
  root to: "posts#index"
  resources :posts 
  resources :messages, only: [:index, :create]
  resources :users, only: :show
  
end
