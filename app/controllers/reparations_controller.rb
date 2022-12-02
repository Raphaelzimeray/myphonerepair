class ReparationsController < ApplicationController

  def index
    @reparations = Reparation.all
  end

  def show
    @reparation = Reparation.find(params[:id])
    @phone = @reparation.phone
  end

  def new
    @reparation = Reparation.new
    @phone = Phone.find(params[:phone_id])
  end

  def create
    @reparation = Reparation.create(reparation_params)
    @reparation.phone = Phone.find(params[:phone_id])
    @phone = Phone.find(params[:phone_id])
      if @reparation.save
        redirect_to  reparation_path(@reparation)
      else
        render :new
      end
  end

  private

  def reparation_params
    params.require(:reparation).permit(:date, :price_of_repair)
  end

end
