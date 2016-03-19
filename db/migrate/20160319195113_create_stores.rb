class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
    end
  end
end
