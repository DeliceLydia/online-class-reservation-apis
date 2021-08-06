class AddTeacherToReservations < ActiveRecord::Migration[6.1]
  def change
    add_reference :reservations, :teacher, null: false, foreign_key: true
  end
end
