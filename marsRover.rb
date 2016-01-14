class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end #end of initialize

  def read_instruction




  end #end read_instruction

end #end rover class

def new_rover
  puts "Please enter the width of your plateau:"
  plateau_width = gets.chomp.to_i

  puts "Please enter the length of your plateau:"
  plateau_length = gets.chomp.to_i

  puts "Please enter the x co-ordinate of your rover:"
  x_inital = gets.chomp

  puts "Please enter the y co-ordinate of your rover:"
  y_initial = gets.chomp

  puts "Please enter the starting direction of your rover (ex. N, S, E, W):"
  direction_initial = gets.chomp

  rover = Rover.new(x_inital, y_initial, direction_initial)

  puts "Enter instructions for how you would like your rover to move (ex.LMRML):"
  instructions = gets.chomp.to_s

end #new_rover method

new_rover
