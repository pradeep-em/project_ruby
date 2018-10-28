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
end