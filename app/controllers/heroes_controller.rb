class HeroesController < ApplicationController
  def index
    heroes = Hero.all
    render json: heroes
  end

 
  def show
    hero = Hero.includes(:powers).find_by(id: params[:id])
    if hero
      render json: hero, include: { powers: { only: [:id, :name, :description] } }, except: [:created_at, :updated_at]
    else
      render json: { error: 'Hero not found' }, status: :not_found
    end
  end
end

