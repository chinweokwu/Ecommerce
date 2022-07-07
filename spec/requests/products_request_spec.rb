require 'rails_helper'

RSpec.describe "Product", type: :request do
  let(:category_attributes) {
    {
      name: 'Shoes'
    }
  }
  let(:product_attributes) {
    {
        name: 'flipflop',
        price: 20,
        description: "great flipflops",
        category: category_attributes
    }
  }

  describe 'request list of all products' do
    before(:example) { get  "/avo/resources/products" }

    it "is a success" do
      expect(response).to have_http_status(200)
      expect(response.body).to include("Product")
    end
  end
end