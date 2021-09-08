Rails.application.routes.draw do
  resources :dragons
  resources :posts
  root to: 'pages#home'
  get 'pages/home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
