class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(params[:restaurant])
    restaurant.save
    redirect_to root_path
  end
end

