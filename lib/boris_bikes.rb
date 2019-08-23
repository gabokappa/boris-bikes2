require_relative '../lib/bike'

class DockingStation
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'No bikes available' if @bikes[-1].broken?
    @bikes.pop
  end

  def dock_bike(live_bike)
    fail 'Docking station full' if full?
    @bikes << live_bike
  end

  private

  attr_reader :bikes

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
