class Rover

  def initialize(pos_x, pos_y, orientation)
    @pos_x = pos_x
    @pos_y = pos_y
    @orientation = orientation.upcase.chomp
  end

def parameter(x,y)
  if @pos_x > x_max || @pos_y > y_max
    puts "Out of bounds."

def read_instruction(instruction)
      instruction.split("").map do |letter|
          if letter == "M"
            move
          elsif letter == "L"
            turn_left
          elsif letter == "R"
            turn_right
          else
            puts "Error."
          end
        end
      end
end

  def move
    if @orientation == "N"
      @pos_y += 1
    elsif @orientation == "S"
      @pos_y -= 1
    elsif @orientation == "E"
      @pos_x += 1
    elsif @orientation == "W"
      @pos_x -= 1
    end
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

def turn_right()
  if @orientation == "N"
    return @orientation = "E"
  elsif @orientation == "E"
    return @orientation = "S"
  elsif @orientation == "S"
    return @orientation = "W"
  elsif @orientation == "W"
    return @orientation = "N"
  end
end

def


end
