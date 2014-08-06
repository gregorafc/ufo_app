class CitiesController < ApplicationController
  



  def index
    @cities = City.sort_all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
  end

  def create
  end
end
