class AddColumnsToFinancialTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :financial_transactions, :author_id, :string ,default: -> { SecureRandom.uuid }, null: false
    add_column :financial_transactions, :name, :string
    add_column :financial_transactions, :amount, :decimal
  end
end
