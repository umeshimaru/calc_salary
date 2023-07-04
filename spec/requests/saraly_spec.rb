require 'rails_helper'

RSpec.describe "Saralies", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get "/saraly/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/saraly/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/saraly/show"
      expect(response).to have_http_status(:success)
    end
  end

end
