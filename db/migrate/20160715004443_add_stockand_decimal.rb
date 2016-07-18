class AddStockandDecimal < ActiveRecord::Migration
  def change
    add_column :products, :in_stock, :boolean
    change_column :products, :price, "numeric USING CAST(price AS numeric)", precision: 6, scale: 2    
  end
end
