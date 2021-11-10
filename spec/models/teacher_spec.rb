require 'rails_helper'

RSpec.describe Teacher, type: :model do
  context 'Validations' do
    it 'should not be valid without experience' do
      teacher = Teacher.new(name: 'lydia', courses: 'ruby')
      expect(teacher).to_not be_valid
    end

    it 'should not be valid without courses' do
      teacher = Teacher.new(name: 'lydia', experience: '7years')
      expect(teacher).to_not be_valid
    end

    it 'should not be valid without name' do
      teacher = Teacher.new(courses: 'ruby', experience: '7years')
      expect(teacher).to_not be_valid
    end

    it 'should be valid when provided all attributes' do
      teacher = Teacher.create(name: 'john doe', courses: 'Poetry', experience: '7yrs', image: 'https://image.freepik.com/free-photo/senior-male-p…aining-writing-green-chalkboard_23-2148200956.jpg')
      expect(teacher).to be_valid
    end
  end
end
