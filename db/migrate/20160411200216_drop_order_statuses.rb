class DropOrderStatuses < ActiveRecord::Migration
  def change
    drop_table :order_statuses
  end
end
