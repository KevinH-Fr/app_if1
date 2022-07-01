Rails.application.routes.draw do
  resources :posts


  resources :classecuries
  resources :classements
  get 'invoices/index'
  get 'invoices/show'
  get 'search', to: "search#index"

  resources :licences
  resources :divisions
  resources :saisons
  resources :equipes
  resources :ecuries


  resources :resultats do 
    collection do
      get :pilotes
    end
  end

  resources :events
  resources :evenements
  resources :circuits
  devise_for :users
  resources :pilotes

  resources :pilotes do
    get '/page/:page', action: :index, on: :collection
  end

  get 'pdf_pages', :to => 'pdf_pages#show'
  
  get 'editions/grille' 
  get '/editions/grilletest3'
  
  get '/shared/classement'
  get '/shared/resultat'

 # get 'editions/grille', :as => grille_path

 get '/pilotes/clear', to: 'pilotes#clear', as: 'clear'

# get '/pilotes/clear', to: 'pilotes#clear', as: 'clear'
 get '/pilotes/pilote_search', to: 'pilotes#pilote_search', as: 'pilote_search'



  #grilles_path

  # get 'grille'
   #, :to => "shared/grille", :as => shared_grille

 # get 'pilotes/info', :to => "pilotes/info", :as => pilote_info

  get 'pilotes/index'

 # root to: "pilotes#index"

  get 'home/index'

  root to: "home#index"

  #get "/path/to/your/mission/page", to: "static_pages#mission", as: "mission"

end
