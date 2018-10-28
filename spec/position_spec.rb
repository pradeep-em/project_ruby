require 'rspec'
require 'spec_helper'
require './lib/position'

describe Position do
  describe '#initialize' do
    it 'should have an x attribute which is an integer' do
      position = Position.new(0, 0, 'NORTH')

      expect(position.x).to be_a Integer
      expect(position.x).to be >= 0
      expect(position.x).to be <= 4
    end

    it 'should have a y attribute which is an integer' do
      position = Position.new(0, 0, 'NORTH')

      expect(position.y).to be_a Integer
      expect(position.y).to be >= 0
      expect(position.y).to be <= 4
    end

    it 'should have a f attribute which is a string' do
      position = Position.new(0, 0, 'NORTH')

      expect(position.f).to be_a String
      expect(position.f).to eq 'NORTH'
    end
  end
end
