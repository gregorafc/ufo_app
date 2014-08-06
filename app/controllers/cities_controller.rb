class CitiesController < ApplicationController
  



  def index
    @cities = City.sort_all
  end

  def show
  end

  def new
  end

  def create
  end
end
