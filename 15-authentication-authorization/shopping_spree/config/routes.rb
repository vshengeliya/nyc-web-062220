Rails.application.routes.draw do
  resources :user_items, only: [:new, :create]
  resources :users, only: [:index, :show, :new, :create]
  resources :items

  patch '/sessions/reset_page', to: 'sessions#reset_page', as: 'session_reset'
  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#login', as: 'login'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'

  # For details on the DS L available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :items, except: [:destroy]

  #VERB URL    CONTROLLER#ACTION   HELPER 
  # get '/items', to: "items#index", as: 'items'
  # get '/items/new', to: "items#new", as: 'new_item'
  # get '/items/:id', to: "items#show", as: 'item'
  # get '/items/:id/edit', to: "items#edit", as: 'edit_item'

  # post '/items', to: "items#create"
  # patch '/items/:id', to: "items#update"
  # delete '/items/:id', to: "items#destroy" 
end

