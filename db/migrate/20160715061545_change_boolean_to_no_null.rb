class ChangeBooleanToNoNull < ActiveRecord::Migration
  def change
    remove_column :products, :in_stock?, :boolean
   
    
  end
end
