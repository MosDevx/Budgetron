require 'rails_helper'

RSpec.describe FinancialTransaction, type: :model do
  before do
    @user = FactoryBot.create(:user)
    # sign_in @user
    @icon = fixture_file_upload('/ppic-1.png', 'ppic-1/png')
    @category = Category.create(name: 'Category', user: @user, icon: @icon)
    @transaction = FinancialTransaction.create(name: 'Transaction', amount: 100, user: @user,
                                               category_ids: [@category.id])
  end

  after do
    @user.destroy
    @category.destroy
    @transaction.destroy
  end

  it 'is valid with valid attributes' do
    ft = FinancialTransaction.new(name: 'Transaction', amount: 100, user: @user, category_ids: [@category.id])
    expect(ft).to be_valid
  end

  it 'is not valid without a name' do
    ft = FinancialTransaction.new(name: nil, amount: 100, user: @user, category_ids: @category_ids)
    expect(ft).to_not be_valid
  end

  it 'is not valid without an amount' do
    ft = FinancialTransaction.new(name: 'Transaction', amount: nil, user: @user, category_ids: @category_ids)
    expect(ft).to_not be_valid
  end

  it 'is not valid with an amount less than 0' do
    ft = FinancialTransaction.new(name: 'Transaction', amount: -100, user: @user, category_ids: @category_ids)
    expect(ft).to_not be_valid
  end

  it 'is not valid without a user' do
    ft = FinancialTransaction.new(name: 'Transaction', amount: 100, user: nil, category_ids: @category_ids)
    expect(ft).to_not be_valid
  end
end
