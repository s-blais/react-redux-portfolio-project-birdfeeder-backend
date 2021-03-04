class Day < ApplicationRecord
  has_many :sightings, dependent: :destroy
  has_many :birds, through: :sightings
end

# "conditions" could be a attribute to add to Day, to enable a subjective record of the temperature and/or precipitation? 
