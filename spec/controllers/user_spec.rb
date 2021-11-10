require 'rails_helper'

RSpec.describe 'Signup', type: :feature do
  it 'should not save the user without a name' do
    user = User.new(email: 'cool@gmail.com', password: 'Cool1@')
    expect(user.save).to be(false)
  end

  it 'should not save the user without a valid name' do
    user = User.new(name: 'co', email: 'cool@gmail.com', password: '123456')
    expect(user.save).to be(false)
  end

  it 'should not save the user without an email' do
    user = User.new(name: 'cool', password: 'Cool1@')
    expect(user.save).to be(false)
  end

  it 'should not save the user without a valid email' do
    user = User.new(name: 'cool', email: 'cool', password: 'Cool1@')
    expect(user.save).to be(false)
  end

  it 'should not save the user without a valid password' do
    user = User.new(name: 'cool', email: 'cool@gmail.com', password: '123456')
    expect(user.save).to be(false)
  end

  it 'should save the user who provided all attributes' do
    user = User.new(name: 'cool', email: 'cool@gmail.com', password: 'Cool1@')
    expect(user.save).to be(true)
  end
end
