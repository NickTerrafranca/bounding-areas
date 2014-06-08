class BoundingBox
  # attr_reader :x, :y, :w, :h
  def initialize (x, y, w, h)
    @x = x
    @y = y
    @w = w
    @h = h
  end

  def right
    @x + @w
  end

  def left
    @x
  end

  def height
    @h
  end

  def width
    @w
  end

  def top
    @y + @h
  end

  def bottom
    @y
  end

  def contains_point?(x, y)
    x >= left && x <= right && y >= bottom && y <= top
  end
end
