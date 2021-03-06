class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    res = { message: Message.account_created, authToken: auth_token }
    json_response(res, :created)
  end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end
end
