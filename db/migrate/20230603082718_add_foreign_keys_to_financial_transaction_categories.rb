class AddForeignKeysToFinancialTransactionCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :financial_transaction_categories, :category, foreign_key: true, index: { name: 'index_ft_categories_on_category_id' }
    add_reference :financial_transaction_categories, :financial_transaction, foreign_key: true, index: { name: 'index_ft_categories_on_transaction_id' }
  end
end
