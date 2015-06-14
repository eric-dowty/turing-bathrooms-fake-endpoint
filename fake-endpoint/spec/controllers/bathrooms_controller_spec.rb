require 'rails_helper'

RSpec.describe "the bathrooms controller" do

  it "returns json data with bathrooom statuses" do 
    visit api_v1_bathrooms_path
    expect(response).to eq("some stuff")
  end

end