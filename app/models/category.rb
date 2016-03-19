class Category < ActiveRecord::based
  validates :name, :description, presence: true
  belongs_to :store
  has_many :products
end
