require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validations' do
    it 'should not be valid without a strong password' do
      user = User.new(name: 'lydia', email: 'lydia@gmail.com', password: 'lydia')
      expect(user).to_not be_valid
    end

    it 'should be valid if provided all attributes' do
      user = User.new(name: 'josiane', email: 'josiane@gmail.com', password: 'Joxy1@')
      expect(user).to be_valid
    end

    it 'should not be valid if provided existed email' do
      User.create(name: 'josiane', email: 'josiane@gmail.com', password: 'Joxy1@')
      user2 = User.new(name: 'josy', email: 'josiane@gmail.com', password: 'Joxy1@')
      expect(user2).to_not be_valid
    end

    it 'should not be valid if length name is not 3 caracters minimum' do
      user = User.new(name: 'jo', email: 'josy@gmail.com', password: 'Joxy1@')
      expect(user).to_not be_valid
    end
  end
end