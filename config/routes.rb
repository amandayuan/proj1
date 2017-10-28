Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  get '/pokemons/new', to: 'pokemons#new', as: 'new_pokemons'
  post '/pokemons/new', to: 'pokemons#create', as: 'create_pokemons'

end
