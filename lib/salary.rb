class Salary
  include HolidaysModule

  def initialize(month,weekdays_goal,weekends_goal,holidays)

    @month = month.to_i
    @weekdays_goal = weekdays_goal.to_i
    @weekends_goal = weekends_goal.to_i
    @holidays = holidays.to_i
    @first_day_of_month = Date.new(2023,@month,1)
    @end_of_month  = @first_day_of_month.end_of_month
    date_range = (@first_day_of_month..@end_of_month ).to_a
    weekdays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']
    
    @weekday_working_days = []
    @work_days_weekend = []



    date_range.each do |date|
      # 平日ならtrue土日（祝日含む）ならfalse
     if weekdays.include?(date.strftime('%A')) && !HolidaysModule.holiday?(date)
      @weekday_working_days.push(date)
     else
      @work_days_weekend.push(date)
     end
     
    end

    @weekday_working_days.shift(@holidays)

    # byebug


  

# .strftime('%A')曜日確認
  end 
  
  
  def calculate_weekday_salary_total
    @weekdays_goal * @weekday_working_days.length
  end 

  def calculate_weekend_salary_total
    @weekends_goal * @work_days_weekend.length
  end 
  # byebug

  def get_monthly_salary
    calculate_weekday_salary_total + calculate_weekend_salary_total
  end 
  
  end
  

  # && 否定の論理演算 
  