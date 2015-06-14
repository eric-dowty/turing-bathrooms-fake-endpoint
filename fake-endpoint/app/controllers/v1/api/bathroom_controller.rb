class Api::V1::BathroomController < ApplicationController
  respond_to :json

  def index
    respond_with Bathroom.statuses
  end

end