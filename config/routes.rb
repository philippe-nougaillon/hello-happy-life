Rails.application.routes.draw do
  
  root 'pages#home'

  get 'pages/groupe'
  get 'pages/admin'
  get 'pages/about'
 
  devise_for :users

  resources :groupes

  resources :discussions
 
end
