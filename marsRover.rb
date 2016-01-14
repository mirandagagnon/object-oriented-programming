class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction

  end #end of initialize

  def move (@direction)
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
   turn == "R" ? @direction = "E" : @direction = "W"
 when "S"
   turn == "R" ? @direction = "W" : @direction = "E"
 when "E"
   turn == "R" ? @direction = "S" : @direction = "N"
 when "W"
   turn == "R" ? @direction = "N" : @direction = "S"
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
  



end #end read_instruction

read_instruction
