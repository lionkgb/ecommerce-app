class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :gender
      t.string :color
      t.string :style
      t.string :movement
      t.string :features
      t.string :price
      t.string :image
      t.timestamps
    end
  end
end
