class Restaurant < ActiveRecord::Base
  attr_accessible :name

  has_many :comments
  belongs_to :user

  validates :name, presence: true
end
