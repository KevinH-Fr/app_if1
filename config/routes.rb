Rails.application.routes.draw do
  resources :events
  resources :evenements
  resources :circuits
  devise_for :users
  resources :pilotes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")


  get 'pilotes/index'

 # root to: "pilotes#index"

  get 'home/index'

  root to: "home#index"
end
