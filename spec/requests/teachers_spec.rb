require 'rails_helper'

RSpec.describe 'Teachers', type: :request do
    # before(:example) do
    #   @teacher = Teacher.create(name: 'lydia', courses: 'ruby', experience: '7 Years')
    #   @user = User.new(name: 'lydia', email: 'lydia@gmail.com', password: 'lydia')
    #   token = JWT.encode({ user_id: @user.id }, Rails.application.secret_key_base)
    #   @headers = { Authorization: "Bearer #{token}" }
    # end

    # it 'display all teachers' do
    #   get '/api/v1/teachers', as: :json, headers: @headers
    #   expect(response).to have_http_status(200)
    # end

    # it 'displays teacher information' do
    #   get '/api/v1/teachers/1', as: :json, headers: @headers
    #   expect(response).to have_http_status(:ok)
    # end
end
