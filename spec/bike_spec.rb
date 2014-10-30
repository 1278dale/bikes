# bike should not be broken when created
# bike should be able to break
# bike should be able to be fixed
require 'bike'

describe Bike do

  let(:bike) { Bike.new }
  
  it "should not be broken when it is created" do
  expect(bike.broken?).to eq false
  end

  it "should be able to break" do 
    bike.break!
    expect(bike.broken?).to eq true
  end

  it "should be able to be fixed" do
    bike.fix!
    expect(bike.broken?).to eq false
  end

end



