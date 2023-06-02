class AddColumnsToFinancialTransactions < ActiveRecord::Migration[7.0]
  def change
      enable_extension 'uuid-ossp'
      add_column :financial_transactions, :author_id, :uuid, default: -> { "uuid_generate_v4()" }, null: false
    
    add_column :financial_transactions, :name, :string
    add_column :financial_transactions, :amount, :decimal
  end
end
