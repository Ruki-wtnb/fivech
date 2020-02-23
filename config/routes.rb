Rails.application.routes.draw do
  get 'threads/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  resources :users
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :threads
  
  post 'threads/res'
  
end
