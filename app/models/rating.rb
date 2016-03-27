class Rating < ActiveRecord::Base
  validates :score, presence: true
  belongs_to :review
  belongs_to :user
end
