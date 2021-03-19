class DaySerializer
  include JSONAPI::Serializer
  attributes :date
  
  attribute :bird_ids do |day|
    day.birds.map do |bird|
      bird.id
    end
  end

  # has_many :birds
  
end
