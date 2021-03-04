class BirdSerializer
  include JSONAPI::Serializer
  attributes :name, :audubon_url, :image_url
end
