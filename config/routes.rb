Rails.application.routes.draw do

  devise_for :users

  get 'pages/groupe'
  get 'pages/admin'
  get 'pages/about'

  post 'discussions/create'

  resources :groupes
  
  root 'pages#home'

end
