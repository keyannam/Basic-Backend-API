class Api::SshhhsController < ApplicationController

  before_action do
    authorize_api_application!
  end

  before_action do
    authorize_current_user!
  end


  def index
    @sshhhs = Sshhh.all.includes(:username)
  end
end
