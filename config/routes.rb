Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show] do
    resources :favorites, only: [:create , :destroy]
  end
  resources :clubs, only: [:index, :show] do
    resources :comments, only: [:create]
    resources :favorites, only: [:create , :update]
    resources :videos, only: [:create]
    resources :admissions, only: [:show,:new,:create]
  end
end
