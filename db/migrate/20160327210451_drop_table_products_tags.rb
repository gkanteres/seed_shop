class DropTableProductsTags < ActiveRecord::Migration
  def change
    drop_table :products_tags
  end
end
