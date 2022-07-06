class Product < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :carts, through: :orders

  validates :name, presence: true
  validates :price, presence:true
  validates :description, presence: true

  def shrink_description
    ActionView::Base.full_sanitizer.sanitize(description).truncate 50
  end
end
