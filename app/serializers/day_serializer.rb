class DaySerializer
  include JSONAPI::Serializer
  attributes :date
  
  # has_many :birds
  
  # attribute :birds do |day|
  #   day.birds
  # end
  
  attribute :birds_ids do |day|
    day.birds.map do |bird|
      bird.id
    end
  end
  
end
