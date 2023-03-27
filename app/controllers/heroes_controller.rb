class HeroesController < ApplicationController
  def index
    heroes = Hero.all.map { |hero| { id: hero.id, name: hero.name, super_name: hero.super_name } }
    render json: heroes
  end

  def show
    hero = Hero.includes(:powers).find_by(id: params[:id])
    if hero
      hero_data = { id: hero.id, name: hero.name, super_name: hero.super_name, powers: hero.powers.map { |power| { id: power.id, name: power.name, description: power.description } } }
      render json: hero_data
    else
      render json: { error: 'Hero not found' }, status: :not_found
    end
  end
end

