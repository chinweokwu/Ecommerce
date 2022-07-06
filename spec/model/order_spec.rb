require 'rails_helper'

RSpec.describe Order, :type => :model do
  it { should belong_to (:cart) }
  it { should belong_to (:product) }
end