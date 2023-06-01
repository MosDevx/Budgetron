class CreateGroupFinancialTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :group_financial_transactions do |t|

      t.timestamps
    end
  end
end
