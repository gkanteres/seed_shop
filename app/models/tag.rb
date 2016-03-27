class Tag < ActiveRecord::Base
  validate :name
  has_and_belongs_to_many :products
end
