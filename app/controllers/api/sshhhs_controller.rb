class Api::SshhhsController < ApplicationController

  def index
    # @sshhhs = Sshhh.all.includes(:user)
    @sshhhs = Sshhh.all.includes(:user).last(20)
  end

  def create
    token = params[:token]
    user = User.find_by token: token
  	@sshhh = Sshhh.new params.require(:sshhh).permit(:secrets)
    @sshhh.user = user
  	if @sshhh.save
  		render :index, status: 201
  	else
  		render json: @sshhh.errors, status: 422
  	end
  end


  def update
  end


  def delete
  end

end
