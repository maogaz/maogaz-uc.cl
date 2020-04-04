class WelcomeController < ApplicationController
  def index
    require 'json'
    require 'rest-client'
    @url1 = 'https://rickandmortyapi.com/api/episode'
    @response1 = RestClient.get @url1
    @result1 = JSON.parse @response1.to_str
    @url2 = 'https://rickandmortyapi.com/api/episode?page=2'
    @response2 = RestClient.get @url2
    @result2 = JSON.parse @response2.to_str
  end

end
