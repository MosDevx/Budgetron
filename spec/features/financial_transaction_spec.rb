require 'rails_helper'

RSpec.feature "FinancialTransactions", type: :feature do
  before do
    @user = FactoryBot.create(:user)
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    @icon = fixture_file_upload('/ppic-1.png', 'ppic-1/png')
    @category = Category.create(name: "Category", user: @user,icon: @icon)
  end

  after do
    @user.destroy
  end

  it "creates a new financial transaction" do
      visit categories_path
      click_link 'Category'
      click_link 'New Transaction'
      fill_in 'Name', with: "Transaction"
      fill_in 'Amount', with: 100
      # check 'Category'
      click_button 'Create Financial transaction'
      expect(page).to have_content('Transaction')


  end



end
