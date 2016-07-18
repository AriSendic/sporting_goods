class Product < ActiveRecord::Base
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