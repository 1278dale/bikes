# bike should not be broken when created
# bike should be able to break
# bike should be able to be fixed
require 'bike'

describe Bike do

  it "should not be broken when creating a new bike" do
    bike = Bike.new
    expect(bike.broken?).to be false
  end
end




