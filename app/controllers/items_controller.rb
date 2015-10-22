class ItemsController < ApplicationController
  def new
    @location = Location.find(params[:location_id])
    @item = Item.new
  end

  def create
    @location = Location.find(params[:location_id])
    @item = @location.items.new(item_params)
    if @item.save
      redirect_to admin_index_path
    else
      flash[:notice] = "No sirree bob"
      redirect_to admin_index_path
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, :description)
    end
end
