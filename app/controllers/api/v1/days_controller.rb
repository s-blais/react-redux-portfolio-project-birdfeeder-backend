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

  def create
    day = Day.new(day_params)
    if day.save
      render json: DaySerializer.new(day) #, status: :accepted ? 
    # else error handling?
  end

  private

  def day_params
    params.require(:day).permit(:date)
  end

end
