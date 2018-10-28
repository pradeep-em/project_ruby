require_relative './lib/table'
require_relative './lib/robot'
require_relative './lib/handle_input'

#creating table object
@table = Table.new
# creating robot object
@robot = Robot.new

# infinit loop for taking inputs
input = ""
while "infinite"
  puts 'Enter your command'
  input = gets.chomp
  
  unless /^EXIT$/.match?(input)
    command = HandleInput.new(robot, table)
    command.interpret(input)
    next
  end

  puts 'Goodbye!'
  break
end