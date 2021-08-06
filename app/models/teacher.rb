class Teacher < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_many :users, through: :reservations

    #validation
    validates_presence_of :name
    validates_presence_of :course
    validates_presence_of :experience
end
