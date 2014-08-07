class CitiesController < ApplicationController
  before_action :set_city, only: [:show]

  def index
   # @cities = City.sort_all
   @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to @city
    else
      render :new
    end
  end


private
  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:city_name)
  end

end



