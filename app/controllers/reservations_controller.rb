class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
    json_response(@reservations)
  end

  def create # rubocop:disable Metrics/PerceivedComplexity
    user ||= User.find_by(id: reservation_params[:user_id])
    if user.nil?
      render json: { message: "User not found with ID #{reservation_params[:user_id]}" }, status: 404
    else
      reservation = Reservation.find_by(user_id: user.id, teacher_id: reservation_params[:teacher_id])
      if reservation.nil?
        reservation = user.reservations.build(reservation_params)
        teacher = Teacher.find_by(id: reservation_params[:teacher_id])
        if teacher.nil?
          render json: { message: "house not found with ID #{reservation_params[:teacher_id]}" },
                 status: 404
        elsif reservation.save
          render json: { id: reservation.id, user_id: reservation.user_id, teacher: reservation.teacher }, status: 200
        else
          render json: { message: reservation.errors.full_messages[0] }, status: 400
        end
      else
        render json: { message: 'rent already exists' }, status: 400
      end
    end
  end

  def show
    user ||= User.find_by(id: params[:id])
    if user.nil?
      render json: { message: "User not found with ID #{params[:id]} doesn't exist" }, status: 404
    else
      reservation = user.reservations.order('created_at DESC').map do |r|
        { id: r.id, user_id: r.user_id, teacher: r.teacher }
      end
      render json: reservation, status: 200
    end
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
    params.permit(:teacher_id, :user_id)
  end

  def set_reservation
    @reservation = current_user.reservations.find_by(id: params[:id])
  end
end
