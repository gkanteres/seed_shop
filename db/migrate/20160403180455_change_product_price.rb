class ChangeProductPrice < ActiveRecord::Migration
  def change
    change_column :products, :price, :decimal, precision: 12, scale: 3
  end
end
