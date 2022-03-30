class MakersController < ApplicationController

  def index
    @makers = Maker.all.order(:created_at)
  end

  def show
    @maker = Maker.find(params[:id])
    @total_vehicles = @maker.vehicles.count
  end

  def create
    maker = Maker.create!(maker_params)
    redirect_to "/makers"
  end

  def new
  end

private

  def maker_params
    params.permit(:name, :usa_market?, :market_share)
  end

end
