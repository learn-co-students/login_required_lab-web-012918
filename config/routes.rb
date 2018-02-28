Rails.application.routes.draw do


  get '/welcome' => 'secrets#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
