class Api::SessionController < ApplicationController

  def create

    username = params[:username]
    password = params[:password]
    @user = User.find_by username: username
    if (@user) && (@user.authenticate password)
    else
      render json: {auth: "failed"}, status: 422
    end
  end

  def new
    @user = User.new
  end
end
