Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :clubs, only: [:index, :show] do
    resources :comments, only: [:create]
    resources :videos, only: [:create]
  end
end
