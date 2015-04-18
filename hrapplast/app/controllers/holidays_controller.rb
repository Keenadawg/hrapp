class HolidaysController < ApplicationController
  def new
    @holiday = Holiday.new
  end

  def index
    @holidays = Holiday.all
  end
  
  def create
    @holiday = Holiday.new(creation_params)
    
    if @holiday.save
      redirect_to @holiday
    else 
      render :new
    end
  end
  
  def show 
  end
  
private
  def creation_params
    params.require(:holiday).permit(:date, :duration, :user_id)
  end
end
