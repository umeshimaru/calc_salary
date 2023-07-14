require 'rails_helper'

RSpec.describe "Saralys", type: :system do
  before do
    driven_by(:rack_test)
  end

  let(:params) do
    {
      salary: {
        month: '7',
        weekdays: '4000',
        weekends: '6000',
        holidays: '5'
      }
    } end 

  it 'calulate my salary' do 
    visit saraly_index_path
    select '7月' , from: '月'
    fill_in 'salary[weekdays]', with: '4000'
    fill_in 'salary[weekends]', with: '6000'
    fill_in 'salary[holidays]', with: '5'
    click_button '送信'

    salary = Salary.new(params)
    monthly_salary = salary.get_monthly_salary
    expect(monthly_salary).to eq(salary.calculate_weekday_salary_total + salary.calculate_weekend_salary_total)

 
    
    # @salary = Salary.new(salary )
    # expect(@salary.get_monthly_salary).to eq(@salary.calculate_weekend_salary_total + @salary.calculate_weekday_salary_total)
  end

end
