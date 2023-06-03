require 'application_system_test_case'

class FinancialTransactionCategoriesTest < ApplicationSystemTestCase
  setup do
    @financial_transaction_category = financial_transaction_categories(:one)
  end

  test 'visiting the index' do
    visit financial_transaction_categories_url
    assert_selector 'h1', text: 'Financial transaction categories'
  end

  test 'should create financial transaction category' do
    visit financial_transaction_categories_url
    click_on 'New financial transaction category'

    click_on 'Create Financial transaction category'

    assert_text 'Financial transaction category was successfully created'
    click_on 'Back'
  end

  test 'should update Financial transaction category' do
    visit financial_transaction_category_url(@financial_transaction_category)
    click_on 'Edit this financial transaction category', match: :first

    click_on 'Update Financial transaction category'

    assert_text 'Financial transaction category was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Financial transaction category' do
    visit financial_transaction_category_url(@financial_transaction_category)
    click_on 'Destroy this financial transaction category', match: :first

    assert_text 'Financial transaction category was successfully destroyed'
  end
end
