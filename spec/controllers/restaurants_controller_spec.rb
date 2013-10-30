require 'spec_helper'

describe RestaurantsController do

  describe "home page" do
    it "#index" do
      get :index
      response.status.should eq(200)
    end

  end
end
