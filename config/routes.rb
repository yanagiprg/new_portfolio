Rails.application.routes.draw do
  root 'home#index'
  resource :home, only: [:index]
  resources :users
  resources :musics
  resource :session, only: [:new, :create, :destroy]
end
