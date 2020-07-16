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
    resources :users do
      collection do
        get :invite_user
        get :send_mail
        get :close_dialog
      end
    end
    resources :portfolios do
      patch :publish_unpublish_portfolio, on: :member
    end
  end
  
  resources :users, only: %i[show destroy]
  # root to: 'home#index'
  resources :portfolios

  get 'homes', to: 'home#index'
  
  devise_scope :user do
    root to: 'portfolios#index'
  end
end
