require 'spec_helper'

describe RestaurantsController do

  describe "home page" do
    it "#index" do
      get :index
      response.status.should eq(200)
    end

    it "assigns @restaurants" do
      restaurants = Restaurant.all
      get :index
      expect(assigns(:restaurants)).to eq(restaurants)
    end



  end
end
