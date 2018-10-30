class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :shipping_address
      t.references :product, foreign_key: true
      t.string :product_title
      t.string :product_price
      t.string :quantity

      t.timestamps
    end
  end
end
