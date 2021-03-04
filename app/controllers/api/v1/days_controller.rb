class Api::V1::DaysController < ApplicationController
  
  def index 
    days = Day.all.sort_by{|d| d[:date]}
    # render json: days
    render json: DaySerializer.new(days)
  end

  def show
    day = Day.find_by_id(params[:id])
    render json: DaySerializer.new(day)
  end

end
