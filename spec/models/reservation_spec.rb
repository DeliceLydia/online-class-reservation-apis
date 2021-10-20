require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:example) do
    @user = User.create(name: 'josiane', email: 'josy@gmail.com', password: 'Josy1@')
    @teacher = Teacher.create(name: 'ephrem', courses: 'ruby', experience: '7years')
  end

  it 'should create a reservation when provided a valid params' do
    reservation = Reservation.new(teacher_id: @teacher.id, user_id: @user.id)
    expect(reservation).to be_valid
  end
end
