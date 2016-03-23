class Product < ActiveRecord::Base
  validates :name, :latin_name, :description, :tag, :price, :image, presence: true
  belongs_to :category
  belongs_to :user
  belongs_to :cart
end
