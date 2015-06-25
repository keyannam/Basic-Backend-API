class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def authorize_api_application!
    if request.headers["x-api-key"] != "d289f337851910f1"
      render json: {status: "unauthorized"}, status: 401
      return false
    end
  end

  def authorize_current_user!
    @current_user = User.find_by token: params[:token]
    if @current_user.nil?
      render json: {token: "not found"}, status: 401
    end
  end

end
