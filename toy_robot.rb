require_relative './lib/table'
require_relative './lib/robot'
# creating table objects
@table = Table.new
@robot = Robot.new
 # it will verify position is valid or not
puts @table.valid_position?(1, 0)

# print a message if robot's position is nil
puts 'Robot position is not present' if @robot.pos.nil?


 # infinit loop for taking inputs
input = ""
while "infinite"
  puts 'Enter your command'
  input = gets.chomp
  unless input == 'EXIT'
    puts 'Robot has been placed' if input == 'PLACE'
    next
  end
  puts 'Goodbye!'
  break
end