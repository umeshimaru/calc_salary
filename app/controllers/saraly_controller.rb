class SaralyController < ApplicationController
 

  def home
  end

  def index
  end

  def show
    @month =  params[:salary][:month]
    weekdays_goal = params[:salary][:weekdays]
    weekends_goal = params[:salary][:weekends]
    holidays = params[:salary][:holidays]
    @salary = Salary.new(@month)
# month,weekdays_goal,weekdays_goal,holidays
  end
end
