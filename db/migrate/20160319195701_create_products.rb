class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :price
      t.integer :store_id
      t.integer :user_id
      t.integer :category_id
    end
  end
end
