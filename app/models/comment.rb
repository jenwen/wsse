class Comment < ActiveRecord::Base
  attr_accessible :content, :restaurant, :user

  belongs_to :restaurant
  belongs_to :user

  validates :content, presence: true
  validates :user_id, presence: true

end
