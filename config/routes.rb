Rails.application.routes.draw do

  root to: 'pages#home'
  get '/welcome', to: 'pages#welcome'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  resources :sessions
  resources :user_fields
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
