class Api::SshhhsController < ApplicationController

   before_action do
     authorize_api_application!
   end

   before_action do
     authorize_current_user!
   end


  def index
    @sshhhs = Sshhh.all.includes(:user)
    @sshhhs = Sshhh.all.includes(:user).first(20) 
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