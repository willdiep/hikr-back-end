class User < ApplicationRecord
  has_many :tags
  has_many :hikingtrails, through: :tags 

  validates :id, uniqueness: true
end
