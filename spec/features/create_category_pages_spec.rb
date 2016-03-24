require 'rails_helper'

describe 'the create a category process' do
  it 'creates a new category' do
    admin = FactoryGirl.create(:admin)
    visit root_path
    click_link 'Admin Sign In'
    login_as(admin, :scope => :admin)
    click_link 'New Category'
    fill_in 'category_name', with: 'Test Category'
    fill_in 'category_description', with: 'Test Category Description'
    click_on 'Enter'
    expect(page).to have_content 'Test Category'
  end
end
