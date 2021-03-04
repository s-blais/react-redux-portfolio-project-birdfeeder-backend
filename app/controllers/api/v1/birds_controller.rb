class Api::V1::BirdsController < ApplicationController

  def index
    birds = Bird.all.sort_by{|b| b[:name]}
    # render json: birds, include: :days
    render json: BirdSerializer.new(birds)
  end

end
