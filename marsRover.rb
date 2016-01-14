class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction

  end #end of initialize

  def move (@direction)
    case move
    when @direction == "N"
      then @y += 1
    when @direction == "S"
      then @y -= 1
    when @direction == "E"
      then @x += 1
    when @direction == "W"
      then @x -= 1
    end
end #end of move method


end #end rover class

def read_instruction
  #get input from the user
  puts "What is the size of your plateau (ex. 5 10)?"
  plateau_size = gets.chomp.split(" ")

  puts "What is the initial location of your rover (ex. 5, 5, N)?"
  initial = gets.chomp.split(" ")

  #get instructions from user
  puts "Enter instructions for how you would like your rover to move (ex.LMRML):"
  instructions = gets.chomp.to_s

  #create new rover object
  rover = Rover.new(initial[0], initial[1], initial[2])

  #get instructions from user
  puts "Enter instructions for how you would like your rover to move (ex.LMRML):"
  instructions = gets.chomp.split(" ")



end #end read_instruction

read_instruction
