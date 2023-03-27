class HeroPowersController < ApplicationController
  def create
    hero_power = HeroPower.new(hero_power_params)
    if hero_power.save
      render json: hero_power, status: :created
    else
      render json: { errors: hero_power.errors }, status: :unprocessable_entity
    end
  end

  private

  def hero_power_params
    params.require(:hero_power).permit(:hero_id, :power_id)
  end
end
