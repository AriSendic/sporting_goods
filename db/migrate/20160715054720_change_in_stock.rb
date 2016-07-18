class ChangeInStock < ActiveRecord::Migration
  def change
    rename_column :products, :in_stock, :in_stock?
  end
end
