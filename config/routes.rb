Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :matches, only: [:index, :show] do
    resources :events, only: [:new, :create, :index]
  end
  resources :events, only: [:show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :locations, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:show, :edit, :update]
end
