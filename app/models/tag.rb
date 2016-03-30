class Tag < ActiveRecord::Base
  validates :name, presence: true
  has_many :product_tags
  has_many :products, :through => :product_tags

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
