require "test_helper"

class GroupFinancialTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_financial_transaction = group_financial_transactions(:one)
  end

  test "should get index" do
    get group_financial_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_group_financial_transaction_url
    assert_response :success
  end

  test "should create group_financial_transaction" do
    assert_difference("GroupFinancialTransaction.count") do
      post group_financial_transactions_url, params: { group_financial_transaction: {  } }
    end

    assert_redirected_to group_financial_transaction_url(GroupFinancialTransaction.last)
  end

  test "should show group_financial_transaction" do
    get group_financial_transaction_url(@group_financial_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_financial_transaction_url(@group_financial_transaction)
    assert_response :success
  end

  test "should update group_financial_transaction" do
    patch group_financial_transaction_url(@group_financial_transaction), params: { group_financial_transaction: {  } }
    assert_redirected_to group_financial_transaction_url(@group_financial_transaction)
  end

  test "should destroy group_financial_transaction" do
    assert_difference("GroupFinancialTransaction.count", -1) do
      delete group_financial_transaction_url(@group_financial_transaction)
    end

    assert_redirected_to group_financial_transactions_url
  end
end
