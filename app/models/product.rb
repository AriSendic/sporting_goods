class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, presence: true
  validates :description, length: { maximum: 500 }
  def friendly_time
    created_at.strftime('%A, %b %d')
  end
 
  def discounted?
    price.to_f < 40   
  end

  def tax
    price.to_f * 0.09
  end
  
  def total
    price.to_f + tax
  end

  
end 