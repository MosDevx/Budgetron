require 'rails_helper'

RSpec.describe Category, type: :model  do
  
	it "is valid with valid attributes" do
		@user = FactoryBot.create(:user)

   @icon = fixture_file_upload('/ppic-1.png', 'ppic-1/png')
    category = Category.create(name: "Category", user: @user,icon: @icon)
		expect(category).to be_valid
	end

	it "is not valid without a name" do
		category = Category.new(name: nil)
		expect(category).to_not be_valid
	end	

	it "is not valid with a name longer than 20 characters" do
		category = Category.new(name: "CategoryCategoryCategoryCategoryCategory")
		expect(category).to_not be_valid
	end

	
  
end