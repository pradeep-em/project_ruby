# robot classe
require_relative 'position'

class Robot
  attr_reader :pos
  
  def intialize
    @pos = nil
  end
  
  def place(command)
    place = /^PLACE\s+\d+\s*,\s*\d+\s*$/
     if place.match?(command)
      command, x, y = command.tr(',', ' ').split
       Position.new(x.to_i, y.to_i)
    end
  end
   # Update the robot's position
  def update_robot(new_position)
    @pos = new_position
  end
   # Check the robot is on right place or not
  def not_in_place?
    @pos.nil?
  end


end