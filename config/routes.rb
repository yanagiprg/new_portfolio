Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resource :home, only: [:index]
  resources :users
  resources :musics
end
