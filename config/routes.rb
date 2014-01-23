Onboard::Application.routes.draw do

  #hook up urls with rooms controller
  resources :rooms

  #sign up users to the site
  resources :users

  root "rooms#index"
  
end