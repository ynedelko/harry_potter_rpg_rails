require 'pry'
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

  def update
    @model = current_user
    @area = Area.find(params[:area_id])
    @location = @area.locations.find(params[:id])
    @item = Item.find(params[:item])
    if @model.items.push(@item)
      flash[:notice] = "Added to inventory!"
      redirect_to location_path
    else
      flash[:alert] = "D'oh!"
      redirect_to location_path
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to admin_index_path
  end

  private
    def location_params
      params.require(:location).permit(:name, :description)
    end
end
