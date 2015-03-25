class CreatureLocationsController < ApplicationController

  def index
    @creature_locations = CreatureLocation.all
    render :template => "creature_locations/index"
  end

  def new
    @creature_location = CreatureLocation.new
    render :template => "creature_locations/new"
  end

  def create
    @creature_location = CreatureLocation.new(creature_location_params)

    if @creature_location.save
      redirect_to creature_locations_path
    else
      render :template => "creature_locations/new"
    end
  end

  def destroy
    CreatureLocation.find(params[:id]).destroy!
    redirect_to creature_locations_path
  end
  
  def creature_location_params
    params.require(:creature_location).permit!
  end

end