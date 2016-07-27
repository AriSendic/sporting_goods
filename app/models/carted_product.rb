class CartedProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :user
  belongs_to :product

  validates :quantity, numericality: { greater_than: 0, only_integer: true }
end
