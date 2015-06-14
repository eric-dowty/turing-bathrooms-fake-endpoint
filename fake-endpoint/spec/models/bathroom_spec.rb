require 'rails_helper'

RSpec.describe "the bathroom model" do

  it "returns a hash of bathroom statuses" do 
    status = Bathroom.statuses
    expect(status.class).to eq(Hash)
  end

  it "returns 1 or 0 to indicate bathroom status" do
    status = Bathroom.statuses
    expect(status[:bathroom1]).to be_within(1).of(0)
    expect(status[:bathroom2]).to be_within(1).of(0)
    expect(status[:bathroom3]).to be_within(1).of(0)
  end

end