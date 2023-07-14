require 'rails_helper'



RSpec.describe Salary do

  let(:params) do
    {
      salary: {
        month: '7',
        weekdays: '4000',
        weekends: '6000',
        holidays: '5'
      }
    } end 

    it "caluculate total salary on weekdays" do
    salary = Salary.new(params)
    total_weekdays_salary = salary.calculate_weekday_salary_total
    expect(total_weekdays_salary).to eq(salary.get_monthly_salary - salary.calculate_weekend_salary_total)
    end

    it "caluculate total salary on weekends" do
    salary = Salary.new( params )
    total_weekends_salary = salary.calculate_weekend_salary_total
    expect(total_weekends_salary).to eq(salary.get_monthly_salary - salary.calculate_weekday_salary_total)
    end

    it "caluculate total salary " do
    salary = Salary.new( params )
    get_monthly_salary = salary.get_monthly_salary
    expect(get_monthly_salary).to eq(salary.calculate_weekday_salary_total + salary.calculate_weekend_salary_total)
    end


end
