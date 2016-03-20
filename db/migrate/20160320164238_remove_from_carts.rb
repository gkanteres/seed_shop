class RemoveFromCarts < ActiveRecord::Migration
  def change
    remove_column :carts, :store_id, :integer
  end
end
