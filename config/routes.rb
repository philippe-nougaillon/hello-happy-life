Rails.application.routes.draw do
  
  root 'pages#home'

  get 'pages/groupe'
 
  devise_for :users
 
end
