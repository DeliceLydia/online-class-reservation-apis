class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show]

  def index
    @teachers = Teacher.all
    json_response(@teachers)
  end

  def show
    json_response(@teacher)
  end

  private

  def set_teacher
    @teacher= Teacher.find(params[:id])
  end
end
