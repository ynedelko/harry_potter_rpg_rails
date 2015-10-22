class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @area = Area.find(params[:area_id])
    @location = Location.new
  end

  def create
    @area = Area.find(params[:area_id])
    @location = @area.locations.new(location_params)
    if @location.save
      redirect_to admin_index_path
    else
      flash[:notice] = "No sirree bob"
      redirect_to admin_index_path
    end
  end

  private
    def location_params
      params.require(:location).permit(:name, :description)
    end
end
