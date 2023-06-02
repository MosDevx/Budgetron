class FinancialTransaction < ApplicationRecord

	belongs_to :user

	has_many : financial_transaction_categories
	has_many : categories, through: :financial_transaction_categories


	# Validations
	validates :name , presence: true, length: { maximum: 50 }
	validates :amount, presence: true, numericality: { greater_than: 0 }

end
