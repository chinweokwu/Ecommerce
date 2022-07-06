require 'rails_helper'

RSpec.describe Order, :type => :model do
  let(:cat) { Category.create(:name => 'AnyThing') }
  let(:product) { Product.create(:name => 'AnyThing', description: "anything", price: "20", category_id: cat.id ) }
  let(:cart) {Cart.create()}
  subject {
    described_class.new(product_id: product.id,
                        cart_id: cart.id,
                        quantity: 4,
                        )
  }


  it "returns the total price of an item" do
    expect(subject.total).to eq(80)
  end

  it "returns zero when the quantity is zero" do
    subject.quantity = 0
    expect(subject.total).to eq(0)
  end

  it { should belong_to (:cart) }
  it { should belong_to (:product) }
end