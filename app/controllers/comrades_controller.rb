class ComradesController < ApplicationController

  def index
    @comrades = Comrade.all
  end

end
