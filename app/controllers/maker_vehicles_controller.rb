class MakerVehiclesController < ApplicationController

  def index
    @maker = Maker.find(params[:id])
  end
end
