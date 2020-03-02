Rails.application.routes.draw do  
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/register', to: 'users#new'
  #root 'welcome#home'
  post '/register', to: 'users#create'
  #get '/login' => 'sessions#new'
  #post '/login' => 'sessions#create'
  #post '/logout' => 'sessions#destory'
  #get '/signup' => "users#new"
  #post '/signup' => 'users#create'
end
