require 'spec_helper'

describe CommentsController do


  context "#create" do
    it "creates a comment" do
      expect {
        post :create, comment: {content: "eat the burrito"}
      }.to change{Comment.count}.by(1)
    end
    it "doesn't create a comment with invalid params" do
      expect {
        post :create, comment: {content: " "}
      }.to_not change{Comment.count}
    end
  end

end
