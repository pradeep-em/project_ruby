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
end