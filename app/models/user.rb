class User < ApplicationRecord
     # encrypt password
    has_secure_password
    
    has_many :reservations, dependent: :destroy
    has_many :teachers, through: :reservations

    #validation
    validates_presence_of :name
    validates_presence_of :email
    validates_presence_of :password_digest
end
