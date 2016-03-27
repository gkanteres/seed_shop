class RemoveTagsFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :tag, :string
  end
end
