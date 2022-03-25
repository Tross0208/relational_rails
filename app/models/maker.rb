class Artist < ApplicationRecord
  validate_presence_of :name
  has_many :vehicles
end
