class ReviewsController < ApplicationController
  before_action :find_restaurant_params, only: [:new, :create]

  def new
    # instance is in restaurant controller
    # @review = Review.new
  end

  def create
    @reviews = @restaurant.reviews
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = find_restaurant_params
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end


  private

  def find_restaurant_params
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
