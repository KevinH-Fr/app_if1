Rails.application.routes.draw do


 
  resources :equipes
  resources :ecuries
  resources :resultats
  resources :events
  resources :evenements
  resources :circuits
  devise_for :users
  resources :pilotes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  
  get 'editions/grille'

  # get 'grille'
   #, :to => "shared/grille", :as => shared_grille

 # get 'pilotes/info', :to => "pilotes/info", :as => pilote_info

  get 'pilotes/index'

 # root to: "pilotes#index"

  get 'home/index'

  root to: "home#index"

  #get "/path/to/your/mission/page", to: "static_pages#mission", as: "mission"

end
