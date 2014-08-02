class ItemsController < ApplicationController
  def show
    id = params[:id].to_i
    @item = Item.find(id)
    @comrade = @item.comrade
  end 
end
