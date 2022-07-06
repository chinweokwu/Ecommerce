require 'rails_helper'

RSpec.describe Product, :type => :model do
  let(:cat) { Category.create(:name => 'AnyThing') }
    subject {
    described_class.new(name: "Anything",
                        description: "Lorem ipsum",
                        price: 10,
                        category_id: cat.id
                        )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it { should have_many(:orders) }
  it { should have_many(:carts) }
  it { should belong_to (:category) }
end