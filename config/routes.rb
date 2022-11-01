# == Route Map
#

Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :hospedes do
      resources :enderecos, only:[:new, :create]
  end
end
