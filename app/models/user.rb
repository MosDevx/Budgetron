class User < ApplicationRecord

	# Associations
	has_many :financial_transactions
	has_many :categories

	# Validations
	validates :name, presence: true, length: { maximum: 50 }
end
