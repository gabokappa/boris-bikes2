
class Bike
  # def working?
  #   true
  # end
attr_reader :broken

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

end
