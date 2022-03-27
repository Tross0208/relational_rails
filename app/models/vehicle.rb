class Vehicle < ApplicationRecord
  validates_presence_of :name
  belongs_to :maker
end
