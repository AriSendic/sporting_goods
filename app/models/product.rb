class Product < ActiveRecord::Base
  def friendly_time
    created_at.strftime('%A, %b %d')
  end
  
  def sale_message
    if price.to_i > 40
      "Discount Item!" 
    else
      "On Sale!"  
    end
  end

  def tax
    price.to_f * 0.09
  end
  
  def total
    price.to_f + tax
  end

  
end 