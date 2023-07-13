require 'rails_helper'



RSpec.describe Salary do
  
    it "caluculate total salary on weekdays" do
    salary = Salary.new( 1,4000,6000, 4 )
    total_weekdays_salary = salary.calculate_weekday_salary_total
    expect(total_weekdays_salary).to eq(68000)
    end
end
