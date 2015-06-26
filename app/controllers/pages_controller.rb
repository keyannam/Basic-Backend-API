class PagesController < ApplicationController
  def dashboard
  end

  require 'http'
  require 'pp'

  
  before_action do
    json = JSON.parse(Http.get("https://localhost:4000?token=d289f337851910f1")}&limit=20"))
    @data = json.to_hash
    @info = @data["results"].map {|listing| listing}
  end

  def index
  end
end
