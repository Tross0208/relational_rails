class ArtistsController < ApplicationController

  def index
    @makers = Maker.all
  end
end
