Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :phones, only: [ :index, :show, :new, :create ] do
    resources :reparations, only: [ :new, :create ]
    resources :buys, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  resources :reparations, only: [ :index, :show ]
  resources :buys, only: [ :index, :show ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
