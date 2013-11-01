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

  def show
    @restaurant = Restaurant.find(params[:id])
    @comment = @restaurant.comments.new
    User.create(username: "Tom", password: "ato", email: "32131")
    @user = User.last
    @vote = @user.votes.new
    # @vote = @comment.votes.new
  end
end

