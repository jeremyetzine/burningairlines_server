Rails.application.routes.draw do
  root :to => 'session#new'
  
  resources :reservations
  resources :users
  resources :flights
  resources :airplanes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
