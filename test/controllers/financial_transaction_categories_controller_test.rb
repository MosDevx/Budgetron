require 'test_helper'

class FinancialTransactionCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_transaction_category = financial_transaction_categories(:one)
  end

  test 'should get index' do
    get financial_transaction_categories_url
    assert_response :success
  end

  test 'should get new' do
    get new_financial_transaction_category_url
    assert_response :success
  end

  test 'should create financial_transaction_category' do
    assert_difference('FinancialTransactionCategory.count') do
      post financial_transaction_categories_url, params: { financial_transaction_category: {} }
    end

    assert_redirected_to financial_transaction_category_url(FinancialTransactionCategory.last)
  end

  test 'should show financial_transaction_category' do
    get financial_transaction_category_url(@financial_transaction_category)
    assert_response :success
  end

  test 'should get edit' do
    get edit_financial_transaction_category_url(@financial_transaction_category)
    assert_response :success
  end

  test 'should update financial_transaction_category' do
    patch financial_transaction_category_url(@financial_transaction_category),
          params: { financial_transaction_category: {} }
    assert_redirected_to financial_transaction_category_url(@financial_transaction_category)
  end

  test 'should destroy financial_transaction_category' do
    assert_difference('FinancialTransactionCategory.count', -1) do
      delete financial_transaction_category_url(@financial_transaction_category)
    end

    assert_redirected_to financial_transaction_categories_url
  end
end
