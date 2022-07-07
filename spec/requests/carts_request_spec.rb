require 'rails_helper'

RSpec.describe "Carts", type: :request do

  describe 'request list of all orders' do
    before(:example) { get  "/avo/resources/carts" }

    it "is a success" do
      expect(response).to have_http_status(200)
      expect(response.body).to include("Carts")
    end
  end

end