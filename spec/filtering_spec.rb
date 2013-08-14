require 'spec_helper'

describe "Rspec filtering" do
  it "should filter the hello and world keywords", :vcr => true do

    response = Net::HTTP.get_response('localhost', '/', 4567)
    puts "Response: #{response.body}"
  end
end
