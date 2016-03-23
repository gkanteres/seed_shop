class AddLatinToProducts < ActiveRecord::Migration
  def change
    add_column :products, :latin_name, :string
  end
end
