class RemoveFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :store_id, :integer
  end
end
