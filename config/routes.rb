Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]
  
  get '/heroes', to: 'heroes#index', defaults: { format: 'json' }
  get '/heroes/:id', to: 'heroes#show', defaults: { format: 'json' }
  get '/powers', to: 'powers#index', defaults: { format: 'json' }
  get '/powers/:id', to: 'powers#show', defaults: { format: 'json' }
  patch '/powers/:id', to: 'powers#update', defaults: { format: 'json' }
  post '/hero_powers', to: 'hero_powers#create', defaults: { format: 'json' }
end


