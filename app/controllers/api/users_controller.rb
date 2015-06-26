class Api::UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit(:username, :email, :password, :password_confirmation)
    @user.token = SecureRandom.hex(8)
    if @user.save
      render status: 201
    else
      render json: @user.errors, status: 422
    end
  end

  def update
  end

  def delete
  end
end
