class MakeInstockNoNull < ActiveRecord::Migration
  def change
    add_column :products, :in_stock?, :boolean, null: false, default: false
  end
end
