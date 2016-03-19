class Category < ActiveRecord::Base
  validates :name, :description, presence: true
  belongs_to :store
  has_many :products
end
