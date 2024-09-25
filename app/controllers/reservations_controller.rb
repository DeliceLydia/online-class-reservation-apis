class ReservationsController < ApplicationController
  before_action :find_user, only: %i[create show]
  before_action :find_reservation, only: %i[update destroy]

  def index
    json_response(current_user.reservations)
  end

  def create
    return user_not_found unless @user
    return render_existing_reservation if existing_reservation?

    @reservation = @user.reservations.build(reservation_params)
    return teacher_not_found unless find_teacher

    if @reservation.save
      render json: { message: "Reservation created successfully", reservation: { id: @reservation.id, user_id: @reservation.user_id, teacher: @reservation.teacher } }, status: 200
    else
      render json: { message: @reservation.errors.full_messages[0] }, status: 400
    end
  end

  def show
    user = current_user
    return user_not_found unless user
  
    reservations = user.reservations.order('created_at DESC').map do |r|
      { id: r.id, user_id: r.user_id, teacher: r.teacher }
    end
  
    render json: reservations, status: 200
  end
  
  def update
    @reservation.update(reservation_params)
    json_response(@reservation)
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
  
    if @reservation && @reservation.user_id == current_user.id
      @reservation.destroy
      json_res({ message: 'Deleted successfully!' }, status: 200)
    else
      render json: { message: 'Reservation not found or you do not have permission to delete it.' }, status: 403
    end
  end
  

  private

  def reservation_params
    params.permit(:teacher_id, :user_id)
  end

  def json_res(object, status = :ok)
    render json: object, status: status
  end  

  def find_user
    @user = User.find_by(id: reservation_params[:user_id])
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end

  def find_teacher
    Teacher.find_by(id: reservation_params[:teacher_id])
  end

  def existing_reservation?
    Reservation.exists?(user_id: @user.id, teacher_id: reservation_params[:teacher_id])
  end

  def user_not_found
    render json: { message: "User not found with ID #{reservation_params[:user_id]}" }, status: 404
  end

  def teacher_not_found
    render json: { message: "Teacher not found with ID #{reservation_params[:teacher_id]}" }, status: 404
  end

  def render_existing_reservation
    render json: { message: 'Reservation already exists' }, status: 400
  end
end
