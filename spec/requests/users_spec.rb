require 'rails_helper'

RSpec.describe 'Users', type: :request do
    it 'creates a user if given a valid params' do
      post '/api/v1/users', params: { name: 'lydia', email: 'lydia@gmail.com', password: 'Lydia1@'}
      expect(response).to have_http_status(:created)
    end
end
