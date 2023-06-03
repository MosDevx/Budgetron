class Category < ApplicationRecord
  # Associations
  belongs_to :user

  has_one_attached :icon

  has_many :financial_transaction_categories
  has_many :financial_transactions, through: :financial_transaction_categories

  # Validations
  validates :name, presence: true, length: { maximum: 20 }
  validates :icon, presence: true

  def total
    financial_transactions.sum(:amount)
  end
end
