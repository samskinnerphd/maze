require 'cell'

class PolarCell < Cell 
  attr_accessor :cw, :ccw, :inward
  attr_reader :outward

  def initialize(row, column)
    super
    @outward = []
  end

  def neighbors
    list = []
    list << cw if cw
    list << ccw if ccw
    list << inward if inward
    list += outward
    list
  end
end
