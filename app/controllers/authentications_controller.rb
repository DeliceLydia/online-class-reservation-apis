class AuthenticationsController < ApplicationController
  # skip_before_action :authorize_request, only: :create

  def create
    user = User.find_by(email: params[:email])
    auth_token =
      AuthenticateUser.new(auth_params[:name], auth_params[:email], auth_params[:password]).call
      render json: { name: user.name, email: user.email }
  end

  private

  def auth_params
    params.permit(:name, :email, :password)
  end
end
