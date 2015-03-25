class UserLocationsController < ApplicationController
	def index
    @user_locations = UserLocation.all
    render :template => "user_locations/index"
  end

  def new
    @user_location = UserLocation.new
    render :template => "user_locations/new"
  end

  def create
    @user_location = UserLocation.new(user_location_params)

    if @user_location.save
      redirect_to user_locations_path
    else
      render :template => "user_locations/new"
    end
  end

  def destroy
    UserLocation.find(params[:id]).destroy!
    redirect_to user_locations_path
  end
  
  def user_location_params
    params.require(:user_location).permit!
  end
end
