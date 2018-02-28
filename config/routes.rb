Rails.application.routes.draw do
  get '/', to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/homepage', to: 'secrets#homepage'
  post '/logout', to: 'sessions#destroy'
  get '/show', to: 'secrets#show'
end
