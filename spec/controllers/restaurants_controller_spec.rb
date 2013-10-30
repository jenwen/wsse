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

    context "#create" do
      it "creates a restaurant with valid params" do
        expect {
          post :create, restaurant:{name: "Pasilla"}
        }.to change{Restaurant.count}.by(1)
      end
    end
  end
end
