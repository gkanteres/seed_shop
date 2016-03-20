class Category < ActiveRecord::Base
  validates :name, :description, presence: true
  has_many :products
end
