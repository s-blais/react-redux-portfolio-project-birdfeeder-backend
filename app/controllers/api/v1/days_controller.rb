class Api::V1::DaysController < ApplicationController
  
  def index 
    days = Day.all.sort_by{|d| d[:date]}
    # render json: days
    render json: DaySerializer.new(days)
  end

end
