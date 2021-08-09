class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :update, :destroy]

  def index
    @teachers = Teacher.all
    json_response(@teachers)
  end

  def create
    @teacher = Teacher.create!(teachers_params)
    json_response(@teacher, :created)
  end

  def show
    json_response(@teacher)
  end

  def update
    @teacher.update(teachers_params)
    head :no_content
  end

  def destroy
    @teacher.destroy
    head :no_content
  end

  private

  def teachers_params
    params.permit(:name, :courses, :experience)
  end

  def set_teacher
    @teachers= Teacher.find(params[:id])
  end
end
