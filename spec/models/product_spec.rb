require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should belong_to :category }
  it { should belong_to :user }
  it { should belong_to :cart }
  it { should have_many :tags }
  it { should have_many :product_tags }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
  it { should validate_presence_of :image }
end
