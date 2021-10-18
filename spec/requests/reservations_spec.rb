require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  before(:example) do
    @user = User.create(name: 'lydia', email: 'lydia@gmail.com', password: 'Lydia1@')
    @reservation = Reservation.create(reservation_date: 20 - 10 - 2021, teacher_id: 1, user_id: 1)
    token = JWT.encode({ user_id: @user.id }, Rails.application.secret_key_base)
    @headers = { Authorization: "Bearer #{token}" }
  end

  it 'should get all reservations' do
    get '/api/v1/reservations', as: :json, headers: @headers
    expect(response).to have_http_status :ok
  end

  it 'should display reservation information' do
    get '/api/v1/reservations/@reservation.id', as: :json, headers: @headers
    expect(response).to have_http_status(:ok)
  end
end
