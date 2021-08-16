require 'rails_helper'

RSpec.describe 'Teachers', type: :request do
    before(:example) do
      @teacher = Teacher.create(name: 'lydia', courses: 'ruby', experience: '7 Years')
    end

    # it 'display all teachers' do
    #   get '/api/v1/teachers'
    #   expect(response).to have_http_status(200)
    # end

    # it 'displays teacher information' do
    #   get '/api/v1/teachers/@teacher.id'
    #   expect(response).to have_http_status(:ok)
    # end
end
