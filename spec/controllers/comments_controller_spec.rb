require 'spec_helper'

describe CommentsController do
  # let!(:restaurant){FactoryGirl.create(:restaurant)}
  # let!(:comment){FactoryGirl.create(:comment)}
  # let!(:user){FactoryGirl.create(:user)}
  let!(:attributes){{user_id: 1, content: "hi", restaurant_id: 1}}

  context "#create" do
    it "creates a comment" do
      expect {
        post :create, restaurant_id: 1, post: attributes
      }.to change{Comment.count}.by(1)
    end

    it "doesn't create a comment with invalid params" do
      expect {
        post :create, restaurant_id: 1, post: {user_id: 1, content: " "}
      }.to_not change{Comment.count}
    end
  end

end
