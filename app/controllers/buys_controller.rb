class BuysController < ApplicationController

  def index
    @buys = Buy.all
  end

  def show
    @buy = Buy.find(params[:id])
    @phone = @buy.phone
  end

  def new
    @buy = Buy.new
    @phone = Phone.find(params[:phone_id])
  end

  def create
    @buy = Buy.create(buy_params)
    @buy.phone = Phone.find(params[:phone_id])
    @phone = Phone.find(params[:phone_id])
      if @buy.save
        redirect_to  buy_path(@buy)
      else
        render :new
      end
  end

  private

    def buy_params
      params.require(:buy).permit(:delivery_date, :accessories, :warranty)
    end

end
