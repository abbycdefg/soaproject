class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render :template => "locations/index"
  end

  def new
    @location = Location.new
    render :template => "locations/new"
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to locations_path
    else
      render :template => "locations/new"
    end
  end

  def destroy
    Location.find(params[:id]).destroy!
    redirect_to locations_path
  end
  
  def location_params
    params.require(:location).permit!
  end

end