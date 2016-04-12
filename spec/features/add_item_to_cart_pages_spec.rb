require 'rails_helper'
require 'launchy'

describe 'the add item to a cart process', :js => true do
  it 'adds item to the cart' do
    user = FactoryGirl.create(:user)
    category = FactoryGirl.create(:category)
    product = FactoryGirl.create(:product)
    login_as(user, :scope => :user)
    visit category_product_path(category, product)
    click_button 'Add to Cart'
    visit cart_path
    # click_link '1 Items in Cart ( $5.00 )'
    expect(page).to have_content 'Total Price: $5.00'
  end
end
