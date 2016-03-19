require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :products }
  it { should validate_presence_of :username }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :address }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :email }
end
