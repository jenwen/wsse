class Comment < ActiveRecord::Base
  attr_accessible :content

  belongs_to :restaurant
  validates_presence_of :content
end
