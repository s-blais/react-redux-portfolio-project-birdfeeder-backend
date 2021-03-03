class Day < ApplicationRecord
  has_many :sightings, dependent: :destroy
  has_many :birds, through: :sightings
end
