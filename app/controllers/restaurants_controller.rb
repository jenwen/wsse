class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def create
    restaurant = Restaurant.new(params[:restaurant])
    restaurant.save
    redirect_to root_path
  end
end

