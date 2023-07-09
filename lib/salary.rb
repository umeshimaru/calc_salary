class Salary
  
  def initialize(month,weekdays_goal,weekends_goal,holidays)

    @month = month.to_i
    @weekdays_goal = weekdays_goal.to_i
    @weekends_goal = weekends_goal.to_i
    @holidays = holidays.to_i
    @first_day_of_month = Date.new(2023,@month,1)
    @end_of_month  = @first_day_of_month.end_of_month
   
    date_range = (@first_day_of_month..@end_of_month ).to_a
    weekdays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']


    date_range.each do |date|
a = date.strftime('%A')
      byebug
     if weekdays.include(date.)
        
     end
    end



  

# .strftime('%A')曜日確認
  end 
  
  
  def a
@days_in_month
  
  end 
  
  
  end
  
