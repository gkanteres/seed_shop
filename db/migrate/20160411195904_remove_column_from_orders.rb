class RemoveColumnFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :order_status_id, :integer
  end
end
