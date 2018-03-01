Rails.application.routes.draw do
  get '/sessions/new'

  root 'application#hello'
  get '/login', to: 'sessions#new'
  get '/show', to: 'secrets#show'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
