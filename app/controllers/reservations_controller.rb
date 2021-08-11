class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show]

  def index
    @reservations = current_user.reservations
    json_response(@reservations)
  end

  def create
    @reservation = current_user.reservations.create!(reservation_params)
    json_response(@reservation, :created)
  end

  def show
    json_response(@reservation)
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    json_response(@reservation)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    json_response(:Deleted_successfully!)
  end

  private

  def reservation_params
    params.permit(:reservation_date, :teacher_id)
  end

  def set_reservation
    @reservation = current_user.reservations.find_by(id: params[:id])
  end
end
