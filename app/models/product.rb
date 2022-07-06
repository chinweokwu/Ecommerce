class Product < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :carts, through: :orders
  def shrink_description
    ActionView::Base.full_sanitizer.sanitize(description).truncate 50
  end
end
