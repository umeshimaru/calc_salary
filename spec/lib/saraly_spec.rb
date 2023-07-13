require 'rails_helper'



RSpec.describe Salary do
  
    it "caluculate total salary on weekdays" do
    salary = Salary.new( 1,4000,6000, 4 )
    total_weekdays_salary = salary.calculate_weekday_salary_total
    expect(total_weekdays_salary).to eq(salary.get_monthly_salary - salary.calculate_weekend_salary_total)
    end

    it "caluculate total salary on weekends" do
    salary = Salary.new( 1,4000,6000, 4 )
    total_weekends_salary = salary.calculate_weekend_salary_total
    expect(total_weekends_salary).to eq(salary.get_monthly_salary - salary.calculate_weekday_salary_total)
    end

    it "caluculate total salary " do
    salary = Salary.new( 1,4000,6000, 4 )
    get_monthly_salary = salary.get_monthly_salary
    expect(get_monthly_salary).to eq(salary.calculate_weekday_salary_total + salary.calculate_weekend_salary_total)
    end


end
