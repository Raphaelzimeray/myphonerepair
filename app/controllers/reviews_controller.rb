class ReviewsController < ApplicationController


  def new
    @review = Review.new
    @phone = Phone.find(params[:phone_id])
  end

  def create
    @review = Review.create(reviews_params)
    @review.phone = Phone.find(params[:phone_id])
    @phone = Phone.find(params[:phone_id])
      if @review.save
        redirect_to phones_path
      else
        render :new
      end
  end

  private

  def reviews_params
    params.require(:review).permit(:rating, :comment)
  end
end
