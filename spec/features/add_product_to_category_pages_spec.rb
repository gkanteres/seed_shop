require 'rails_helper'

describe 'the add product to a category process' do
  it 'adds product to a category' do
    admin = FactoryGirl.create(:admin)
    category = FactoryGirl.create(:category)
    login_as(admin, :scope => :admin)
    visit category_path(category)
    click_link 'Add new product'
    fill_in 'product_name', with: 'Test Product'
    fill_in 'product_latin_name', with: 'Testus Productii'
    fill_in 'product_description', with: 'Test Product Description'
    fill_in 'product_price', with: 5
    fill_in 'product_image', with: 'product_image_url'
    click_on 'Enter'
    expect(page).to have_content 'Test Product'
  end
end
