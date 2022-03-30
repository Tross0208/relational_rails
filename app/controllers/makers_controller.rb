class MakersController < ApplicationController

  def index
    @makers = Maker.all.order(:created_at)
  end
  def show
    @maker = Maker.find(params[:id])
    @total_vehicles = @maker.vehicles.count
  end
end
