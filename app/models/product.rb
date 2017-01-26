class Product < ApplicationRecord
  def tax
    price.to_i * 0.9
  end 
  def friendly_created_at
    created_at_strftime("%B %e, %Y")
  end 
end
