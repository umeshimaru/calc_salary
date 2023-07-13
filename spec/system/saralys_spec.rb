require 'rails_helper'

RSpec.describe "Saralys", type: :system do
  before do
    driven_by(:rack_test)
  end


  it 'calulate my salary' do 
    visit saraly_index_path
    select '7月' , from: '月'
    fill_in 'salary[weekdays]', with: '4000'
    fill_in 'salary[weekends]', with: '6000'
    fill_in 'salary[holidays]', with: '5'
    click_button '送信'

    


    
  end
  
end
