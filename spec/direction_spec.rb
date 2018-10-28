require 'rspec'
require 'spec_helper'
require './lib/direction'

describe Direction do
  describe '#turn_right' do
    it 'should return the next value in the OPTIONS array' do
      direction_object = Direction.new
      direction = 'NORTH'

      expect(direction_object.turn_right(direction)).to be_a String
      expect(direction_object.turn_right(direction)).to eq 'EAST'
    end

    it 'should return nil if the direction is empty' do
      direction_object = Direction.new
      direction = ''

      expect(direction_object.turn_right(direction)).to be_nil
    end
  end

  describe '#turn_left' do
    it 'should return the previous value in the OPTIONS array' do
      direction_object = Direction.new
      direction = 'NORTH'

      expect(direction_object.turn_left(direction)).to be_a String
      expect(direction_object.turn_left(direction)).to eq 'WEST'
    end

    it 'should return nil if the direction is empty' do
      direction_object = Direction.new
      direction = ''

      expect(direction_object.turn_left(direction)).to be_nil
    end
  end
end