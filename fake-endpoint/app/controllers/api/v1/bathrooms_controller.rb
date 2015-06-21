class Api::V1::BathroomsController < ApplicationController
  respond_to :json

  def index
    respond_with Bathroom.statuses
  end

  def status
    Bathroom.updates(params["status"]) if params["key"] == 'a71cbb3cc730e252d1512258671a6bb7'
    respond_with Bathroom.statuses
  end

end
