# should be able to receive bikes
# should be able to release bikes, only working
# should have a capacity limit and know it
# should not accept broken bikes
# must know how many bikes it has
require 'station'

describe Station do

  let(:bike) {Bike.new}
  let(:station) {Station.new}(:capacity => 20)

  it "should be able to receive bikes" do
  expect(station.bike_count).to eq(0)
  station.store(bike)
  expect(station.bike_count).to eq(1)
  end

  it "should be able to release a bike" do
    station.store(bike)
    expect(station.bike_count).to eq(1)
    station.release(bike)
    expect(station.bike_count).to eq(0)
  end

  it "should know when full" do
    expect(station).not_to be_full
    20.times { station.dock(Bike.new)}
    expect(station).to be_full
  end

end