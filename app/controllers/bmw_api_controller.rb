require 'httparty'

class BmwApiController < ApplicationController

  def get_data
    response = HTTParty.get("")
  end
end
