Rails.application.routes.draw do
  
  root 'pages#home'

  get 'pages/groupe'
  get 'pages/admin'
 
  devise_for :users
 
end
