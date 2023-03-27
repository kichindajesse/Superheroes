SuperHeroes API 
This app displays available heroes and their powers.
As a user you have the ability to add new powers to the superheroes and update their description based on your liking.
START
To start this app , clone this repository and run the following commands:
  1.bundle install
  2.rails db:migrate db:seed
  3.rails server
  
ROUTES
 get 'hero_powers/create'
  get 'powers/index'
  get 'powers/show'
  get 'powers/update'
  get 'heroes/index'
  get 'heroes/show'
  resources :heroes, only: [:index, :show] do
  resources :powers, only: [:index]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]
