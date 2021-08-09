class User < ApplicationRecord
     # encrypt password
    has_secure_password
    
    has_many :reservations, dependent: :destroy
    has_many :teachers, through: :reservations

    #validation
    validates :name, presence: true, length: { minimum: 3, maximum: 20 }
    validates :email, presence: true, uniqueness: true, format: /[^\s]@[^\s]/
    def password_requirements_are_met
        rules = {
          " must contain at least one lowercase letter"  => /[a-z]+/,
          " must contain at least one uppercase letter"  => /[A-Z]+/,
          " must contain at least one digit"             => /\d+/,
          " must contain at least one special character" => /[^A-Za-z0-9]+/
        }
      
        rules.each do |message, regex|
          errors.add( :password, message ) unless password.match( regex )
        end
      end

    validate :password_requirements_are_met
end
