class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	# Associations
	has_many :financial_transactions , dependent: :destroy
	has_many :categories 						, dependent: :destroy

	# Validations
	validates :name, presence: true, length: { maximum: 50 }
end
