require 'rspec'
require 'spec_helper'
require './lib/robot'
 describe Robot do
  describe '#initialize' do
    it 'current position should be nil' do
      robot = Robot.new
      expect(robot.pos).to be_nil
    end
  end
  describe '#place' do
    it 'should return an instance of Position' do
      robot = Robot.new
      command = 'PLACE 1,2'
      expect(robot.place(0, 0)).to be_a Position
    end
  end
   describe '#update_robot' do
    it 'should return an instance of Position' do
      robot = Robot.new
      new_position = Position.new(0, 1)
      expect(robot.update_robot(new_position)).to be_a Position
    end
     it 'should return false if new_position is nil' do
      robot = Robot.new
      new_position = nil
      expect(robot.update_robot(new_position)).to be_nil
    end
  end
   describe '#not_in_place?' do
    it 'should return true if position attribute is nil' do
      robot = Robot.new
      expect(robot.not_in_place?).to be true
    end
  end
end