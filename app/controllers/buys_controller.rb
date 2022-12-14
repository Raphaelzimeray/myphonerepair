class BuysController < ApplicationController

  def index
    @buys = Buy.all.where(user_id: current_user.id)
  end

  def show
    @buy = Buy.find(params[:id])
    @phone = @buy.phone
    @buy.delivery_date = @buy.delivery_date + 2.days
  end

  def new
    @buy = Buy.new
    @phone = Phone.find(params[:phone_id])
  end

  def create
    @buy = Buy.create(buy_params)
    @buy.phone = Phone.find(params[:phone_id])
    @buy.user = current_user
      if @buy.save!
        redirect_to buy_path(@buy)
      else
        render :new
      end
  end

  private

  def buy_params
    params.require(:buy).permit(:delivery_date, :accessories, :warranty)
  end

end
