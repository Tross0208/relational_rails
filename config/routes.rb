Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/makers', to: 'makers#index'
get '/makers/new', to: 'makers#new'
get '/makers/:id', to: 'makers#show'
get '/vehicles', to: 'vehicles#index'
get '/vehicles/:id', to: 'vehicles#show'
get '/makers/:id/vehicles', to: 'maker_vehicles#index'
post '/makers', to: 'makers#create'
end
