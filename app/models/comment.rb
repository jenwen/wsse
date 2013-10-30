class Comment < ActiveRecord::Base

  belongs_to :restaurant
  validates_presence_of :content
end
