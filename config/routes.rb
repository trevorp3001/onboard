Onboard::Application.routes.draw do

  #hook up urls with rooms controller
  resources :rooms

  root "rooms#index"
  
end