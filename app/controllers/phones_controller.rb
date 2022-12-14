class PhonesController < ApplicationController

  def index
    if params[:query].present?
      @phones = Phone.where("model ILIKE ?", "%#{params[:query]}%")
    else
      @phones = Phone.all
    end
    @markers = @phones.geocoded.map do |phone|
      {
        lat: phone.latitude,
        lng: phone.longitude,
        info_window: render_to_string(partial: "info_window", locals: { phone: phone })
      }
    end
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
