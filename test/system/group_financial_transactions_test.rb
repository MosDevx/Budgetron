require "application_system_test_case"

class GroupFinancialTransactionsTest < ApplicationSystemTestCase
  setup do
    @group_financial_transaction = group_financial_transactions(:one)
  end

  test "visiting the index" do
    visit group_financial_transactions_url
    assert_selector "h1", text: "Group financial transactions"
  end

  test "should create group financial transaction" do
    visit group_financial_transactions_url
    click_on "New group financial transaction"

    click_on "Create Group financial transaction"

    assert_text "Group financial transaction was successfully created"
    click_on "Back"
  end

  test "should update Group financial transaction" do
    visit group_financial_transaction_url(@group_financial_transaction)
    click_on "Edit this group financial transaction", match: :first

    click_on "Update Group financial transaction"

    assert_text "Group financial transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Group financial transaction" do
    visit group_financial_transaction_url(@group_financial_transaction)
    click_on "Destroy this group financial transaction", match: :first

    assert_text "Group financial transaction was successfully destroyed"
  end
end
