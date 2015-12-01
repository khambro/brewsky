class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :name
      t.string :shipping_address
      t.string :status
      t.integer :total

      t.timestamps null: false
    end
  end
end
