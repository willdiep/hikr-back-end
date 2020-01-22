class Hikingtrail < ApplicationRecord
  has_many :tags
  has_many :users, through: :tags
end
