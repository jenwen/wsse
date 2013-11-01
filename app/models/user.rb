class User < ActiveRecord::Base
include Clearance::User

  attr_accessible :email

  has_many :restaurants
  has_many :comments
  has_many :votes

  validates_presence_of :email

  def self.already_voted_on?(comment_id)
    self.votes.find_by_comment_id(comment_id).length > 0
  end

end
