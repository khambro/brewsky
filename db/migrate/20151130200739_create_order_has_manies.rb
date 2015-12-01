class CreateOrderHasManies < ActiveRecord::Migration
  def change
    create_table :order_has_manies do |t|
      t.integer :order_id
      t.integer :product_option_id
      t.integer :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
