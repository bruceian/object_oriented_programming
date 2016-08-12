class Rover

  def initialize(pos_x, pos_y, orientation)
    @pos_x = pos_x
    @pos_y = pos_y
    @orientation = orientation.upcase.chomp
  end

def parameter(x_max, y_max)
  if @pos_x <= x_max || @pos_y <= y_max
    puts "In bound."
  else
    puts "Out of bounds."
  end
end

def read_instructions(input)
  input.each_char do |letters|
          if letters == "M"
            move
          elsif letters == "L"
            turn_left
          elsif letters == "R"
            turn_right
          else
            puts "Command does not exist."
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

def position
  return @pos_x, @pos_y, @orientation
end

end

puts "Enter the plateau size (x and y value): "
x_max, y_max = gets.split(" ")
