class EpisodeController < ApplicationController
  def index
    require 'json'
    require 'rest-client'
    @url = "https://integracion-rick-morty-api.herokuapp.com/api/episode/#{URI.encode(params[:motivo])}"
    @response = RestClient.get @url
    @result = JSON.parse @response.to_str
  end

end
