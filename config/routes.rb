Rails.application.routes.draw do
  get 'welcome/index'
  post 'events' => 'events#create'
  get '/signup' => 'hosts#new'
  get '/login' => 'sessions#new'
  post '/login'=> 'sessions#create'
  delete 'logout' => 'sessions#destroy' 
  get 'logout' => 'sessions#destroy'

  resources :hosts
  resources :categories
  resources :events
  resources :sessions

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
