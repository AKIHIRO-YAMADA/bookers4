Rails.application.routes.draw do
	devise_for :users
  resources :users,only: [:show,:edit,:update,:index]
  resources :relationships, only: [:create, :destroy, :following, :follower]
  root 'home#top'
  get 'home/about'
  get 'relationships/following'
  get 'relationships/followers'
  
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy] do
  resource :book_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  
  end
end
