# bike should not be broken when created
# bike should be able to break
# bike should be able to be fixed
require 'bike'

describe Bike do
  
  it "should not be broken when it is created" do
  the_bike = Bike.new
  expect(the_bike).not_to be_broken
  end
end