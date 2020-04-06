class PlaceController < ApplicationController
  def index
    require 'json'
    require 'rest-client'
    @url = "https://integracion-rick-morty-api.herokuapp.com/api/location/#{URI.encode(params[:motivo])}"
    @response = RestClient.get @url
    @result = JSON.parse @response.to_str
  end
end
