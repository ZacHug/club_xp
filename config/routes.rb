Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :clubs, only: [:index, :show] do
    resources :comments, only: [:index, :new, :create]
  end
end
