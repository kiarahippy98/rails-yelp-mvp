class RestaurantsController < ApplicationController

  def top
    @restaurants = Restaurant.where(rating: 5)

    # def restaurants
    #   @restaurant_name = @restaurant.name
    # end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def index
    @restaurants = Restaurant.all
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :catergory)
  end
end
