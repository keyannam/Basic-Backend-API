class PagesController < ApplicationController
  def dashboard
  end

  # require 'dotenv'
  # require 'http'
  # require 'pp'

  # Dotenv.load

  # before_action do
  #   json = JSON.parse(Http.get("https://openapi.etsy.com/v2/listings/active?api_key=#{ENV.fetch("ETSY_API_KEY")}&limit=10&includes=MainImage"))
  #   @data = json.to_hash
  #   @info = @data["results"].map {|listing| listing}
  # end

  # def index
  # end
end
