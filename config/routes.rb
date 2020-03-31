Rails.application.routes.draw do
  devise_for :users
  # root to: 'home#index'
  resources :portfolios

  get 'homes', to: 'home#index'
  
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end
