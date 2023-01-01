# == Route Map
#

Rails.application.routes.draw do
  root 'home#index'
  
  devise_for :users

  resources :hospedes do
      resources :enderecos, only:[:new, :create]
  end
  resources :quartos

  resources :reservas
end
