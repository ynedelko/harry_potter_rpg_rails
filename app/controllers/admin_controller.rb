class AdminController < ApplicationController
  def index
    @area = Area.new
    @item = Item.new
  end
end
