require 'rails_helper'

RSpec.describe "Categories", type: :request do
    let(:category_attributes) {
      {
        name: 'A Article Title'
      }
    }
  describe 'request list of all categories' do
    category = Category.create(name: "Shoes")
    before(:example) { get  "/avo/resources/categories" }

    it "is a success" do
      expect(response).to have_http_status(200)
      expect(response.body).to include("Categories")
    end
  end
  describe 'create a categories' do
    it "is a success" do
      expect { post "/avo/resources/categories", params: { category: category_attributes }}.to change(Category, :count).by(1)
    end
  end
end