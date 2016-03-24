class Product < ActiveRecord::Base
  validates :name, :latin_name, :description, :tag, :price, :image, presence: true
  has_many :reviews
  belongs_to :category
  belongs_to :user
  belongs_to :cart

  def self.search(search)
    where("name ILIKE ? OR latin_name ILIKE ? OR description ILIKE ? OR tag ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
