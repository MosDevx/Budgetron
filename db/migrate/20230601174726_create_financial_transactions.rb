class CreateFinancialTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_transactions do |t|

      t.timestamps
    end
  end
end
