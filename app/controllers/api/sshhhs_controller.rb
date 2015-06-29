class Api::SshhhsController < ApplicationController

  def index
    # @sshhhs = Sshhh.all.includes(:user)
    @sshhhs = Sshhh.all.includes(:user).last(20) 
  end

  def create
  	@sshhh = Sshhh.new params.require(:sshhh).permit(:secrets, :user_id)
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