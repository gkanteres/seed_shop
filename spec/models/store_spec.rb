require 'rails_helper'

RSpec.describe Store, type: :model do
  it { should validate_presence_of :name }
  it { should have_many :categories }
  it { should have_many :products }
end
