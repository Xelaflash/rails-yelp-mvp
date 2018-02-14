class ReviewsController < ApplicationController

  def index
    @reviews = Reviews.all
  end


  def new
  end

  def create
  end


end
