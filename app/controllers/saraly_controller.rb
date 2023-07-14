class SaralyController < ApplicationController
 

  def home
    
  end

  def index
  end

  def show
    @salary = Salary.new(params)
  end
end
