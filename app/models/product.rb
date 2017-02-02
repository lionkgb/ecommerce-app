class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  def tax
    price.to_i * 0.09
  end 
  def friendly_created_at
    created_at_strftime("%B %e, %Y")
  end 
end
