class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :subtotal, precision: 6, scale: 2
      t.decimal :tax, precision: 5, scale: 2
      t.decimal :total, precision: 6, scale: 2

      t.timestamps null: false
    end
  end
end
