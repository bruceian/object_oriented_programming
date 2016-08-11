class Rover

  def initialize(pos_x, pos_y, orientation)
    @pos_x = pos_x
    @pos_y = pos_y
    @orientation = orientation
  end

  def read_instruction(x_max, y_max, instructions)
    if @pos_x

  end

  def move
    if @orientation = "N"
      @pos_y += 1
    elsif @orientation = "S"
      @pos_y -= 1
    elsif @orientation = "E"
      @pos_x += 1
    elsif @orientation = "W"
      @pos_x -= 1
    end

  def turn_left()
    if @orientation == "N"
      return @orientation = "W"
    elsif @orientation == "W"
      return @orientation = "S"
    elsif @orientation == "S"
      return @orientation = "E"
    elsif @orientation == "E"
      return @orientation = "N"
  end
end


end
