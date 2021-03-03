class Bird < ApplicationRecord
  has_many :sightings, dependent: :destroy
  has_many :days, through: :sightings
end
