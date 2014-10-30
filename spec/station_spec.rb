# should be able to receive bikes
# should be able to release bikes, only working
# should have a capacity limit and know it
# should not accept broken bikes
# must know how many bikes it has
require 'station'

describe Station do

  let(:bike) {Bike.new}
  let(:station) {Station.new}

  it "should be able to receive bikes" do

  expect(station.bike_count).to eq(0)
  station.store(bike)
  expect(station.bike_count).to eq(1)
  end
end