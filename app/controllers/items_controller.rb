class ItemsController < ApplicationController
  def show
    id = params[:id].to_i
    @item = Item.find(id)
    @comrade = @item.comrade
  end

  def new
    comrade_id = params[:comrade_id].to_i
    @comrade = Comrade.find(comrade_id)
    @item = Item.new 
  end
  
  def create
    item_params = params[:item]
    comrade_id = params[:comrade_id].to_i
    item = Item.create(name: item_params[:name], desc: item_params[:desc])
    item.comrade_id = comrade_id
    item.save
    respond_to do |format|
      format.html { redirect_to comrade_path(comrade_id) }
    end
  end
end
