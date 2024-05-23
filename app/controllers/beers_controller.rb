class BeersController < ApplicationController

  def index
    @beers = BreweryApiService.fetch_beers
  end

  def search
    @beers = BreweryApiService.fetch_beers(name: params[:name])
    respond_to do |format|
      format.turbo_stream
      format.html { render partial: 'beers', locals: { beers: @beers } }
    end
  end
end
