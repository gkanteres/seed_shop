class RemoveFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :store_id, :integer
  end
end
