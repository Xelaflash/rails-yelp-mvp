class RestaurantsController < ApplicationController

  before_action :find_restaurant, only: [:show]


  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
  end



  private
  def find_restaurant
    @restaurants = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
