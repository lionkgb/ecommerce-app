class AddingImageToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image_id, :integer
  end
end
