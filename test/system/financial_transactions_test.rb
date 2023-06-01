require "application_system_test_case"

class FinancialTransactionsTest < ApplicationSystemTestCase
  setup do
    @financial_transaction = financial_transactions(:one)
  end

  test "visiting the index" do
    visit financial_transactions_url
    assert_selector "h1", text: "Financial transactions"
  end

  test "should create financial transaction" do
    visit financial_transactions_url
    click_on "New financial transaction"

    click_on "Create Financial transaction"

    assert_text "Financial transaction was successfully created"
    click_on "Back"
  end

  test "should update Financial transaction" do
    visit financial_transaction_url(@financial_transaction)
    click_on "Edit this financial transaction", match: :first

    click_on "Update Financial transaction"

    assert_text "Financial transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Financial transaction" do
    visit financial_transaction_url(@financial_transaction)
    click_on "Destroy this financial transaction", match: :first

    assert_text "Financial transaction was successfully destroyed"
  end
end
