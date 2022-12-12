class PhonesController < ApplicationController

  def index
    @phones = Phone.all
  end

  def show
    @phone = Phone.find(params[:id])
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new(phone_params)
      if @phone.save
        redirect_to phone_path(@phone)
      else
        render :new
      end
  end

  private

  def phone_params
    params.require(:phone).permit(:brand, :model, :capacity, :color, :camera, :year, :processor, :price, photos: [])
  end
end
