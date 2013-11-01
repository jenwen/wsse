class Comment < ActiveRecord::Base
  attr_accessible :content, :restaurant_id, :user_id

  belongs_to :restaurant
  belongs_to :user
  has_many :votes

  validates_presence_of :content, :user_id, :restaurant_id

end
