require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should validate_presence_of :review_title }
  it { should validate_presence_of :review_content }
  it { should validate_presence_of :rating }
  it { should belong_to :user }
  it { should belong_to :product }
end
