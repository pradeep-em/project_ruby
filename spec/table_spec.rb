require 'rspec'
require 'spec_helper'
require './lib/table'

describe Table do
  describe '#initialize' do
    it 'should have an x attribute which is a Range' do
      table = Table.new

      expect(table.x).to be_a Range
      expect(table.x).to eq 0..4
    end

    it 'should have a y attribute which is a Range' do
      table = Table.new

      expect(table.y).to be_a Range
      expect(table.y).to eq 0..4
    end
  end

  describe '#valid_position?' do
    it 'should return true when x and y attributes are valid' do
      table = Table.new

      expect(table.valid_position?(0, 1)).to be true
    end

    it 'should return false when x and y attributes are too big' do
      table = Table.new

      expect(table.valid_position?(6, 6)).to be false
    end

    it 'should return false when x attribute is too big' do
      table = Table.new

      expect(table.valid_position?(6, 0)).to be false
    end

    it 'should return false when y attribute is too big' do
      table = Table.new

      expect(table.valid_position?(0, 6)).to be false
    end

    it 'should return false when x and y attributes are negative' do
      table = Table.new

      expect(table.valid_position?(-1, -1)).to be false
    end

    it 'should return false when x attribute is negative' do
      table = Table.new

      expect(table.valid_position?(-2, 0)).to be false
    end

    it 'should return false when y attribute is negative' do
      table = Table.new

      expect(table.valid_position?(0, -2)).to be false
    end
  end
end
