require 'rails_helper'

RSpec.describe 'Categories', type: :feature do
  before do
    @user = FactoryBot.create(:user)
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  after do
    @user.destroy
  end

  it 'creates a new category' do
    visit new_category_path
    fill_in 'Name', with: 'Category'
    attach_file('category_icon', File.absolute_path('./spec/fixtures/files/ppic-1.png'))
    click_button 'Create Category'
    expect(page).to have_content('Category')
  end

  it 'does not create a new category without a name' do
    visit new_category_path
    fill_in 'Name', with: nil
    attach_file('category_icon', File.absolute_path('./spec/fixtures/files/ppic-1.png'))
    click_button 'Create Category'
    expect(page).to have_content("Name can't be blank")
  end

  it 'does not create a new category with a name longer than 20 characters' do
    visit new_category_path
    fill_in 'Name', with: 'CategoryCategoryCategoryCategoryCategory'
    attach_file('category_icon', File.absolute_path('./spec/fixtures/files/ppic-1.png'))
    click_button 'Create Category'
    expect(page).to have_content('Name is too long (maximum is 20 characters)')
  end

  it 'does not create a new category without an icon' do
    visit new_category_path
    fill_in 'Name', with: 'Category'
    click_button 'Create Category'
    expect(page).to have_content("Icon can't be blank")
  end
end
