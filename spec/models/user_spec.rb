require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(name: 'John', email: 'john@john.com', password: '123456')
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(name: nil, email: 'john@john.com', password: '123456')
    expect(user).to_not be_valid
  end
end
