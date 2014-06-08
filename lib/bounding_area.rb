require_relative 'bounding_box'

class BoundingArea
  def initialize(array)
    @box_data = array
  end

  def contains_point?(x, y)
    unless @box_data.empty?
      @box_data.each do |box|
        if box.contains_point?(x, y)
          return true
        else
          return false
        end
      end
    else
      false
    end
  end
end
