Onboard::Application.routes.draw do

  get "sessions/new"
  #hook up urls with rooms controller
  resources :rooms

  #sign up users to the site
  resources :users

  #log in and log out of our site
  #its a singular resource because we can only do one session
  resource :session

  root "rooms#index"
  
end