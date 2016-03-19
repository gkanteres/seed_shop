class Store < ActiveRecord::Base
  validates :name, presence: true
  has_many :products
  has_many :categories
end
