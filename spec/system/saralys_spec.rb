require 'rails_helper'

RSpec.describe "Saralys", type: :system do
  before do
    driven_by(:rack_test)
  end


  it 'calulate my salary' do 
    visit 'saraly_index_path'
    select ''
  end
  
end
