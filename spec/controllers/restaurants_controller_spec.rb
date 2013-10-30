require 'spec_helper'

describe RestaurantsController do

  describe "home page" do
    it "#index" do
      get :index
      response.status.should eq(200)
    end

    it "assigns @restaurants" do
      get :index
      expect(assigns(:restaurants)).to eq( Restaurant.all)
    end


    context "#create" do
      it "creates a restaurant with valid params" do
        expect {
          post :create, restaurant:{name: "Pasilla"}
        }.to change{Restaurant.count}.by(1)
      end
      it "doesn't create a restaurant with invalid params" do
        expect {
          post :create, restaurant:{name: " "}
        }.to_not change{Restaurant.count}
      end
    end
  end


end
