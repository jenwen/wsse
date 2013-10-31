class Restaurant < ActiveRecord::Base
  attr_accessible :name
  has_many :comments

  validates :name, presence: true
end
