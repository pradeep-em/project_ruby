require 'rspec'
require 'spec_helper'
require './lib/direction'

describe Direction do
  describe '#initialize' do
    it 'should have a start_direction attribute which is a String' do
      direction = Direction.new('NORTH')
      expect(direction.start_direction).to be_a String
    end
  end
  describe '#turn_right' do
    it 'should return the next value in the directions array' do
      direction = Direction.new('NORTH')
      current_direction = 'NORTH'
      expect(direction.turn_right(current_direction)).to be_a String
      expect(direction.turn_right(current_direction)).to eq 'EAST'
    end
    it 'should return nil if the current_direction is empty' do
      direction = Direction.new('NORTH')
      current_direction = ''
      expect(direction.turn_right(current_direction)).to be_nil
    end
  end
end