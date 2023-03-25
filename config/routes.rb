Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]

  get '/heroes/:id/powers', to: 'heroes#powers'
  get '/powers/:id/heroes', to: 'powers#heroes'
end
