class User < ApplicationRecord
  # encrypt password
  has_secure_password

  has_many :reservations, dependent: :destroy
  has_many :teachers, through: :reservations

  # validation
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :password, presence: true, length: { minimum: 6, maximum: 250 }
end
