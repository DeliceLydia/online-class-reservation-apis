require 'rails_helper'

RSpec.describe 'Authentications', type: :request do
    before(:example) do
      @user = User.create(name: 'lydia', email: 'lydia@gmail.com', password: 'Lydia1@')
    end

    it 'should authenticate an existing user' do
      post '/api/v1/authentications', params: { email: 'lydia@gmail.com', password: 'Lydia1@'}
      expect(response).to have_http_status(200)
    end

    it 'should not authenticate a user if provided unexisted email' do
      post '/api/v1/authentications', params: { email: 'lydie@gmail.com', password: 'Lydia1@'}
      expect(response).to have_http_status(401)
    end
end
