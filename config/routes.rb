Rails.application.routes.draw do
  get 'hero_powers/create'
  get 'powers/index'
  get 'powers/show'
  get 'powers/update'
  get 'heroes/index'
  get 'heroes/show'
  resources :heroes, only: [:index, :show] do
    resources :powers, only: [:index]
  end
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]
end

