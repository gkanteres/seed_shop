require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { should have_many :products }
  it { should have_many :product_tags}
  it { should validate_presence_of :name }

end
