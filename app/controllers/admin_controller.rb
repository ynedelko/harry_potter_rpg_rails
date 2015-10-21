class AdminController < ApplicationController
  def index
    @areas = Area.all
    @locations = Location.all
    @items = Item.all
  end
end
