require 'rails_helper'

RSpec.describe "Categories", type: :request do
  describe "GET /categories" do
    it " returns all the categories" do
      get "/avo/resources/categories"
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET #index' do
    before(:example) { get  "/avo/resources/categories" }

    it "is a success" do
      expect(response).to have_http_status(200)
    end
  end
end