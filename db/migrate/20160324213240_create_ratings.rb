class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :review_id
      t.integer :score, default: 0
    end
  end
end
