class MakerVehiclesController < ApplicationController

  def index
    @maker = Maker.find(params[:id])
  end

  def new
    @maker = Maker.find(params[:id])
  end

  def create
    #binding.pry
    @maker = Maker.find(params[:id])
    @maker_id = @maker.id
    Vehicle.create!(vehicle_params)
    redirect_to "makers/#{@maker_id}/vehicles"
  end

  private
  def vehicle_params
    params.permit(:name, :price, :maker_id)
  end
end
