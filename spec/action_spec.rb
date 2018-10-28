require 'rspec'
require 'spec_helper'
require './lib/action'

describe Action do
  describe '#place' do
    it 'should return an instance of Position' do
      action = Action.new
      command = 'PLACE 0,0,NORTH'

      expect(action.place(command)).to be_a Position
    end
  end

  describe '#move' do
    it 'should return an instance of Position' do
      action = Action.new
      position = Position.new(0, 0, 'NORTH')

      expect(action.move(position)).to be_a Position
    end
  end

  describe '#left' do
    it 'should return an instance of Position' do
      action = Action.new
      position = Position.new(0, 0, 'NORTH')

      expect(action.left(position)).to be_a Position
    end
  end

  describe '#right' do
    it 'should return an instance of Position' do
      action = Action.new
      position = Position.new(0, 0, 'NORTH')

      expect(action.right(position)).to be_a Position
    end
  end

  describe '#report' do
    it 'should return an instance of Position' do
      action = Action.new
      position = Position.new(0, 0, 'NORTH')

      expect(action.right(position)).to be_a Position
    end
  end

  describe '#prev_option' do
    it 'should return the last value in the OPTIONS array' do
      action = Action.new

      expect(action.send(:prev_option, 'WEST')).to be_a String
      expect(action.send(:prev_option, 'WEST')).to eq 'SOUTH'
    end

    it 'should return the previous value in the OPTIONS array' do
      action = Action.new

      expect(action.send(:prev_option, 'NORTH')).to be_a String
      expect(action.send(:prev_option, 'NORTH')).to eq 'WEST'
    end

    it 'should return the previous value in the OPTIONS array' do
      action = Action.new

      expect(action.send(:prev_option, 'EAST')).to be_a String
      expect(action.send(:prev_option, 'EAST')).to eq 'NORTH'
    end

    it 'should return the previous value in the OPTIONS array' do
      action = Action.new

      expect(action.send(:prev_option, 'SOUTH')).to be_a String
      expect(action.send(:prev_option, 'SOUTH')).to eq 'EAST'
    end

    it 'should return nil if the direction param is empty' do
      action = Action.new

      expect(action.send(:prev_option, '')).to be_nil
    end
  end

  describe '#next_option' do
    it 'should return the next value in the OPTIONS array' do
      action = Action.new

      expect(action.send(:next_option, 'WEST')).to be_a String
      expect(action.send(:next_option, 'WEST')).to eq 'NORTH'
    end

    it 'should return the next value in the OPTIONS array' do
      action = Action.new

      expect(action.send(:next_option, 'NORTH')).to be_a String
      expect(action.send(:next_option, 'NORTH')).to eq 'EAST'
    end

    it 'should return the next value in the OPTIONS array' do
      action = Action.new

      expect(action.send(:next_option, 'EAST')).to be_a String
      expect(action.send(:next_option, 'EAST')).to eq 'SOUTH'
    end

    it 'should return the first value in the OPTIONS array' do
      action = Action.new

      expect(action.send(:next_option, 'SOUTH')).to be_a String
      expect(action.send(:next_option, 'SOUTH')).to eq 'WEST'
    end

    it 'should return nil if the direction param is empty' do
      action = Action.new

      expect(action.send(:next_option, '')).to be_nil
    end
  end
end