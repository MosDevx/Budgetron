class FinancialTransactionCategory < ApplicationRecord
	belongs_to :financial_transaction
	belongs_to :category
end
