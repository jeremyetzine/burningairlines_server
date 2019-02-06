Rails.application.routes.draw do
  root :to => 'session#new'

  resources :reservations, :except => [:new]
  resources :users
  resources :flights
  resources :airplanes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/flights/:id/reservations' => 'flights#reservations'
end
