Rails.application.routes.draw do  
  resources :wines, only: [:index, :new, :create] do 
    resources :reviews, only: [:index, :new]
  end

  resources :reviews, only: :create
  get '/wines/red', to: 'wines#red' 
  get '/wines/white', to: 'wines#white'
  get '/wines/sparkling', to: 'wines#sparkling'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'winecellar', to: 'users#show'
end
