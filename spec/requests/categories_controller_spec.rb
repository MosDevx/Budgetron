require 'rails_helper'

RSpec.describe 'CategoriesControllers', type: :request do
  before do
    @user = FactoryBot.create(:user)
    sign_in @user
    @icon = fixture_file_upload('/ppic-1.png', 'ppic-1/png')
    @category = Category.create(name: 'Category', user: @user, icon: @icon)
  end

  after do
    @user.destroy
    @category.destroy
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/categories'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/categories/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get "/categories/#{Category.first.id}/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    it 'returns http success' do
      post '/categories', params: { category: { name: 'Category', user: @user, icon: @icon } }
      expect(response).to redirect_to(category_path(id: Category.last.id))
    end
  end

  describe 'PATCH /update' do
    it 'returns http success' do
      patch "/categories/#{Category.first.id}", params: { category: { name: 'Category' } }
      expect(response).to redirect_to(category_path(id: Category.last.id))
    end
  end

  describe 'DELETE /destroy' do
    it 'returns http success' do
      delete "/categories/#{Category.first.id}"
      expect(response).to redirect_to(categories_path)
    end
  end
end
