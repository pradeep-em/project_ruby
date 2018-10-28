# creating table objects
@table = Table.new
 # it will verify position is valid or not
puts @table.valid_position?(1, 0)

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