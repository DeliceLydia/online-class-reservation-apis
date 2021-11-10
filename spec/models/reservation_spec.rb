require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:example) do
    @user = User.create(name: 'josiane', email: 'josy@gmail.com', password: 'Josy1@')
    @teacher = Teacher.create(name: 'john doe', courses: 'Poetry', experience: '7yrs', image: 'https://image.freepik.com/free-photo/senior-male-p…aining-writing-green-chalkboard_23-2148200956.jpg')
  end

  it 'should not be valid without a valid teacher id' do
    reservation = Reservation.new(teacher_id: 5)
    expect(reservation).to_not be_valid
  end

  it 'should not be valid without a valid user id' do
    reservation = Reservation.new(user_id: 100)
    expect(reservation).to_not be_valid
  end

  it 'should create a reservation when provided all attributes' do
    reservation = Reservation.new(teacher_id: @teacher.id, user_id: @user.id)
    expect(reservation).to be_valid
  end
end
