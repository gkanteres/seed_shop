class Review < ActiveRecord::Base
  validates :review_title, :review_content, presence: true
  belongs_to :user
  belongs_to :product
end
