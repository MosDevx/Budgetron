class CreateFinancialTransactionCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_transaction_categories do |t|

      t.timestamps
    end
  end
end
