class Station
  
  def initialize
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def store(bike)
    @bikes << bike
    end
  end

