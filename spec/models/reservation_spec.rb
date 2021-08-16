require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:example) do
    @user = User.create(name: 'josiane', email: 'josy@gmail.com', password: 'Josy1@')
    @teacher = Teacher.create(name: 'ephrem', courses: 'ruby', experience: '7years')
  end

  it 'should not be valid without a valid date' do
    reservation = Reservation.new(reservation_date: 'lydia')
    expect(reservation).to_not be_valid
  end

  it 'should create a reservation when provided a valid date' do
    reservation = Reservation.new(reservation_date: '01/10/2021', teacher_id: @teacher.id, user_id: @user.id)
    expect(reservation).to be_valid
  end
end
