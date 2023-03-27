class PowersController < ApplicationController
  def index
    powers = Power.all
    render json: powers
  end

  def show
    power = Power.find(params[:id])
    render json: power
  end

def update
  power = Power.find_by(id: params[:id])
  if power
    if power.update(power_params.merge(description: params[:description]))
      render json: power
    else
      render json: { errors: power.errors }, status: :unprocessable_entity
    end
  else
    render json: { error: "Power not found" }, status: :not_found
  end
end


  private

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
