class CitiesController < ApplicationController
  

  def index
    @cities = City.sort_all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
    @contact = @city.contacts.new
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



