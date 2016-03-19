class Product < ActiveRecord::Base
  validates :name, :description, :price, presence: true
  belongs_to :store
  belongs_to :category
  belongs_to :user
  belongs_to :cart
end
