FactoryBot.define do
	factory :category do
		name { "Category" }
		user { FactoryBot.create(:user) }
	end
end
		