Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :matches, only: [:index, :show] do
    resources :events, only: [:new, :create, :index]
  end
  resources :events, only: [:show, :edit, :update, :destroy] do
    resources :chatrooms, only: :show
    resources :event_bookings, only: [:create, :show, :index]
  end
  resources :event_bookings, only: [:destroy]
  resources :locations, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:show, :edit, :update]

  resources :users, only: [:show] do
    resources :notifications, only: [:index]
  end

  resources :chatrooms, only: [] do
    resources :messages, only: :create
  end

  resources :posts do
    resources :post_comments, only: [:index, :new, :create]
    resources :post_likes, only: [:create]
  end

  resources :post_comments, only: [:destroy]
  resources :post_likes, only: [:destroy]
end
