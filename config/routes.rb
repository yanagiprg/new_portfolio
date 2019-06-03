Rails.application.routes.draw do
  root 'home#index'
  resource :home, only: [:index]
  resources :users
  resources :musics
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  resource :session, only: [:new, :create, :destroy]
end
