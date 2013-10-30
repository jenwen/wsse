require 'spec_helper'

describe CommentsController do


  context "#create" do
    it "creates a comment" do
      expect {
        post :create, comment: {content: "eat the burrito"}
      }.to change{Comment.count}.by(1)
    end
  end

end
