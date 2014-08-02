class ComradesController < ApplicationController

  def index
    @comrades = Comrade.all
  end

  def show
    id = params[:id].to_i
    @comrade = Comrade.find(id)
  end                     

end
