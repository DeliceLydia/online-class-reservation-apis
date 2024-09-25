class HomeController < ApplicationController
  skip_before_action :authorize_request, only: [:index]

  def index
    render json: { message: "Welcome to the Online class reservation app!" }
  end
end
