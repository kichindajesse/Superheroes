class HeroPowersController < ApplicationController

  def create
    hero_power = HeroPower.new(hero_power_params)
    if hero_power.save
      render json: hero_power, status: :created
    else
      render json: { error: hero_power.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def show
    power = Power.find_by(id: params[:id])

    if power
      render json: power.as_json(only: [:id, :name, :description])
    else
      render json: { error: "Power not found" }, status: :not_found
    end
  end

  def update
    power = Power.find_by(id: params[:id])

    if power
      power.update(power_params)
      render json: power.as_json(only: [:id, :name, :description])
    else
      render json: { error: "Power not found" }, status: :not_found
    end
  end

  private

  def power_params
    params.permit(:description)
  end
end
