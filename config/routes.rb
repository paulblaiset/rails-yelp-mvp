Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'

  get '/restaurants/new', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create'

  get '/restaurants/:id', to: 'restaurants#show', as:"restaurant"

  resources :restaurants do
  resources :reviews, only: [ :new, :create, :index ]
end

end
