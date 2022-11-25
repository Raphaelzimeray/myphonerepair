class ReparationsController < ApplicationController

  def index
    @reparations = Reparation.all
  end

  def show
    @reparation = Reparation.find(params[:id])
    @phone = @booking.phone
  end

  def new
    @reparation = Reparation.new
    @phone = 
  end

  def create
  end

end
