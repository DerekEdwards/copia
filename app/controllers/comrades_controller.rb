class ComradesController < ApplicationController

  def index
    @comrades = Comrade.all
  end

  def show
    id = params[:id].to_i
    @comrade = Comrade.find(id)
  end                     

  def new
    @comrade = Comrade.new 
  end 

  def create
    
    @comrade = Comrade.create(name: params[:comrade][:name], email: params[:comrade][:email])
    respond_to do |format|
      format.html { redirect_to comrade_path(@comrade) }
    end
  end 

end
