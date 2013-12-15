class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    @beer.save
    redirect_to root_path
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    @beer.update(beer_params)
    redirect_to root_path
  end


  private
  def beer_params
    params.require(:beer).permit(:name, :brewery, :style, :location, :abv, :notes)
  end

end
