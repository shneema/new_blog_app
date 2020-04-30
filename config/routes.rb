Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :comments

  resources :likes, only: :create do
  	collection do
  	  get :dislike
  	end
  end

  namespace :admin do
    resources :users
    resources :portfolios, only: %i[index update]
  end
  
  resources :users, only: %i[show edit update]
  # root to: 'home#index'
  resources :portfolios

  get 'homes', to: 'home#index'
  
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end
