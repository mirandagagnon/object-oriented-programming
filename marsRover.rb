class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction.upcase

  end #end of initialize

  def move
    case @direction
    when "N"
      @y += 1
    when "S"
      @y -= 1
    when "E"
      @x += 1
    when "W"
      @x -= 1
    end
end #end of move method

def turn (l_r)
 case @direction
 when  "N"
   l_r == "R" ? @direction = "E" : @direction = "W"
 when "S"
   l_r == "R" ? @direction = "W" : @direction = "E"
 when "E"
   l_r == "R" ? @direction = "S" : @direction = "N"
 when "W"
   l_r == "R" ? @direction = "N" : @direction = "S"
 end
end #end of turn method


end #end rover class

def read_instruction
  #get input from the user
  puts "What is the size of your plateau (ex. 5 10)?"
  plateau_size = gets.chomp.split(" ")

  puts "What is the initial location of your rover (ex. 5, 5, N)?"
  initial = gets.chomp.split(" ")

  #create new rover object
  rover = Rover.new(initial[0], initial[1], initial[2])

  #get instructions from user
  puts "Enter instructions for how you would like your rover to move (ex.LMRML):"
  instructions = gets.chomp.split(" ")

  #iterate through array and call methods turn and move
  instructions.each do |x|
    if (x == "L" || x == "R")
      rover.turn
    else x == "M"
      rover.move
    end
  end
  puts "The new position of your rover is: #{rover.x}, #{rover.y}, #{rover.direction}"


end #end read_instruction


def read_instruction_2
  puts "What is the initial location of your  2nd rover (ex. 5, 5, N)?"
  initial = gets.chomp.split(" ")

  #create new rover object
  rover2 = Rover.new(initial[0], initial[1], initial[2])

  #get instructions from user
  puts "Enter instructions for how you would like your rover to move (ex.LMRML):"
  instructions = gets.chomp.split(" ")

  #iterate through array and call methods turn and move
  instructions.each do |x|
    if (x == "L" || x == "R")
      rover2.turn
    else x == "M"
      rover2.move
    end
  end
  puts "The new position of your 2nd rover is: #{rover2.x}, #{rover2.y}, #{rover2.direction}"

end #end read_instruction_2
read_instruction
read_instruction_2
