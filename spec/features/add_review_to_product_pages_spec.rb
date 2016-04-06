require 'rails_helper'
require 'launchy'

describe 'the add review to a product process' do
  it 'adds review to a product' do
    user = FactoryGirl.create(:user)
    category = FactoryGirl.create(:category)
    product = FactoryGirl.create(:product)
    login_as(user, :scope => :user)
    visit category_product_path(category, product)
    click_link 'Add review'
    fill_in 'review_review_title', with: 'Test review title'
    fill_in 'review_review_content', with: 'Test review content'
    click_on 'Enter'
    expect(page).to have_content 'Test review title'
  end
end
