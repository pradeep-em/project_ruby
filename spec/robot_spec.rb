require 'rspec'
require 'spec_helper'
require './lib/robot'

describe Robot do
  describe '#initialize' do
    it 'should have a current_position attribute which is nil' do
      robot = Robot.new

      expect(robot.position).to be_nil
    end
  end

  describe '#place' do
    it 'should return an instance of Position' do
      robot = Robot.new
      command = 'PLACE 0,0,NORTH'

      expect(robot.place(command)).to be_a Position
    end
  end

  describe '#move' do
    it 'should return an instance of Position' do
      robot = Robot.new
      position = Position.new(0, 0, 'NORTH')

      expect(robot.move(position)).to be_a Position
    end
  end

  describe '#left' do
    it 'should return an instance of Position' do
      robot = Robot.new
      position = Position.new(0, 0, 'NORTH')

      expect(robot.left(position)).to be_a Position
    end
  end

  describe '#right' do
    it 'should return an instance of Position' do
      robot = Robot.new
      position = Position.new(0, 0, 'NORTH')

      expect(robot.right(position)).to be_a Position
    end
  end

  describe '#report' do
    it 'should return nil' do
      robot = Robot.new
      position = Position.new(0, 0, 'NORTH')

      expect(robot.report(position)).to be_nil
    end
  end

  describe '#update_robot' do
    it 'should return an instance of Position' do
      robot = Robot.new
      new_position = Position.new(0, 1, 'NORTH')

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

  describe '#prev_option' do
    it 'should return the previous value in the OPTIONS array' do
      robot = Robot.new

      expect(robot.send(:prev_option, 'NORTH')).to be_a String
      expect(robot.send(:prev_option, 'NORTH')).to eq 'WEST'
    end

    it 'should return nil if the direction param is empty' do
      robot = Robot.new

      expect(robot.send(:prev_option, '')).to be_nil
    end
  end

  describe '#next_option' do
    it 'should return the next value in the OPTIONS array' do
      robot = Robot.new

      expect(robot.send(:next_option, 'NORTH')).to be_a String
      expect(robot.send(:next_option, 'NORTH')).to eq 'EAST'
    end

    it 'should return nil if the direction param is empty' do
      robot = Robot.new

      expect(robot.send(:next_option, '')).to be_nil
    end
  end
end