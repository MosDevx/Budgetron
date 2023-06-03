require 'rails_helper'

RSpec.describe "TransactionsControllers", type: :request  do

  before do
    @user = FactoryBot.create(:user)
    sign_in @user
    @icon = fixture_file_upload('/ppic-1.png', 'ppic-1/png')
    @category = Category.create(name: "Category", user: @user,icon: @icon)
    @transaction = FinancialTransaction.create(name: "Transaction", amount: 100, user: @user, category_ids: [@category.id])
  end

  after do
    @user.destroy
    @category.destroy
    @transaction.destroy

  end

  describe "GET /index" do
    it "returns http success" do
      get "/financial_transactions"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
        	it "returns http success" do
  		get "/financial_transactions/new"
  		expect(response).to have_http_status(:success)
  	end
  end

  describe "GET /edit" do
          	it "returns http success" do
  		get "/financial_transactions/#{FinancialTransaction.first.id}/edit"
  		expect(response).to have_http_status(:success)
  	end
  end

  describe "POST /create" do
          	it "returns http success" do
  		post "/financial_transactions", params: { financial_transaction: { name: "Transaction" , amount: 100, user:@user, category_ids: [@category.id] } }
  		expect(response).to redirect_to(category_path(id: Category.last.id))
  	end
  end

  describe "PATCH /update" do
          	it "returns http success" do
  		patch "/financial_transactions/#{FinancialTransaction.first.id}", params: { financial_transaction: { name: "Transaction" } }
  		expect(response).to redirect_to(financial_transaction_path(id: FinancialTransaction.last.id))
  	end
  end


end
