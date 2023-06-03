class FinancialTransaction < ApplicationRecord

	belongs_to :user

	has_many :financial_transaction_categories, dependent: :destroy
	has_many :categories, through: :financial_transaction_categories


	# Validations
	validates :name , presence: true, length: { maximum: 50 }
	validates :amount, presence: true, numericality: { greater_than: 0 }


	def create_financial_transaction_categories(category_ids)
		categories = Category.where(id: category_ids)
		categories.each do |cat|
			financial_transaction_categories.build(category: cat)
		end
	end

end
