class ReviewsController < ApplicationController

  def create
    # create a new review
    # a review must belong to a restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    # initialise a new review
    @review = Review.new(review_params)
    # assign it to the restaurant
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      redirect_to restaurant_path(@restaurant), status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
