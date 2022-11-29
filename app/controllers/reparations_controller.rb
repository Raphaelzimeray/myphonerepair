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
    @phone = Phone.find(params[:phone_id])
  end

  def create
    @reparation = Reparation.new(reparation_params)
    @reparation.user = current_user
    @reparation.phone = Phone.find(params[:phone_id])
    @phone = Phone.find(params[:phone_id])
      if @reparation.save
        redirect_to reparation_path(@reparation)
      else
        render :new
      end
  end

  private

  def reparation_params
    params.require(:reparation).permit(:date, :price_of_repair)
  end

end
