class Maker < ApplicationRecord
  validates_presence_of :name
  has_many :vehicles
end
