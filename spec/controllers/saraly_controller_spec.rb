require 'rails_helper'

RSpec.describe SaralyController, type: :controller do
  describe "#home" do 
    it "responds successfully" do
      get :home
      
    end
  end
end

