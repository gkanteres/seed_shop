class Product < ActiveRecord::Base
  validates :name, :latin_name, :description, :price, :image, presence: true
  has_many :reviews
  has_and_belongs_to_many :tags
  belongs_to :category
  belongs_to :user
  belongs_to :cart

  def self.search(search)
    where("name ILIKE ? OR latin_name ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
