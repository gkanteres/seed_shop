class Review < ActiveRecord::Base
  validates :review_title, :review_content, presence: true
  has_many :ratings
  belongs_to :user
  belongs_to :product

  def average_rating
    ratings.sum(:score) / ratings.size
  end
end
