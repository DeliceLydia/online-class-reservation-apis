class Reservation < ApplicationRecord
  belongs_to :teacher
  belongs_to :user

  # validation

  validates_presence_of :reservation_date
end
