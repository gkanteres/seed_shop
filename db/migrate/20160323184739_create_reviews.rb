class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review_title
      t.string :review_content
      t.integer :rating
      t.integer :user_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
