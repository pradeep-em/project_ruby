require_relative './lib/robot'
# creating robot object
@robot = Robot.new

# infinit loop for taking inputs
input = ""
while "infinite"
  puts 'Enter your command'
  input = gets.chomp
  unless input == 'EXIT'
    position = @robot.place(input)
    puts "Position: #{position.x},#{position.y}"
    @robot.update_robot(position)
    puts 'placed' unless @robot.not_in_place?
    next
  end
  puts 'Goodbye!'
  break
end