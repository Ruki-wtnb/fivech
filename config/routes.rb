Rails.application.routes.draw do
  get 'categos/update'
  root 'threads#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :threads
  
  post 'threads/res'
  
  get 'categos/new'
  post 'categos/create'
  
end
