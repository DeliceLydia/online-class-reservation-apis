require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  before(:example) do
    @user = User.create(name: 'lydia', email: 'lydia@gmail.com', password: 'Lydia1@')
    @reservation = Reservation.create(teacher_id: 1, user_id: 1)
    token = JWT.encode({ user_id: @user.id }, Rails.application.secret_key_base)
    @headers = { Authorization: "Bearer #{token}" }
  end

  it 'should get all reservations' do
    get '/api/v1/reservations', as: :json, headers: @headers
    expect(response).to have_http_status :ok
  end
end
