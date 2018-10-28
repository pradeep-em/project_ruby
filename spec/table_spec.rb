require 'rspec'
require 'spec_helper'
require './lib/table'

describe Table do
  describe '#initialize' do
    it 'should have an x attribute which is an integer' do
      table = Table.new

      expect(table.x).to be_a Integer
      expect(table.x).to eq 5
    end

    it 'should have a y attribute which is an integer' do
      table = Table.new

      expect(table.y).to be_a Integer
      expect(table.y).to eq 5
    end
  end

  describe '#valid_position?' do
    it 'should return true when x and y attributes are valid' do
      table = Table.new

      expect(table.valid_position?(0, 1)).to be_truthy
    end

    it 'should return false when x and y attributes are too big' do
      table = Table.new

      expect(table.valid_position?(10, 10)).to be_falsey
    end

    it 'should return false when x attribute is too big' do
      table = Table.new

      expect(table.valid_position?(10, 0)).to be_falsey
    end

    it 'should return false when y attribute is too big' do
      table = Table.new

      expect(table.valid_position?(0, 10)).to be_falsey
    end

    it 'should return false when x and y attributes are negative' do
      table = Table.new

      expect(table.valid_position?(-3, -3)).to be_falsey
    end

    it 'should return false when x attribute is negative' do
      table = Table.new

      expect(table.valid_position?(-2, 0)).to be_falsey
    end

    it 'should return false when y attribute is negative' do
      table = Table.new

      expect(table.valid_position?(0, -2)).to be_falsey
    end
  end

  describe '#valid_x?' do
    it 'should return true when x is not greater than or equal to 0' do
      table = Table.new

      expect(table.send(:valid_x?, 1)).to be_truthy
    end

    it 'should return true when x is less than or equal to 4' do
      table = Table.new

      expect(table.send(:valid_x?, 3)).to be_truthy
    end

    it 'should return false when x is less 0' do
      table = Table.new

      expect(table.send(:valid_x?, -3)).to be_falsey
    end

    it 'should return false when x greater than 4' do
      table = Table.new

      expect(table.send(:valid_x?, 10)).to be_falsey
    end
  end

  describe '#valid_y?' do
    it 'should return true when y is not greater than or equal to 0' do
      table = Table.new

      expect(table.send(:valid_y?, 0)).to be_truthy
    end

    it 'should return true when y is less than or equal to 4' do
      table = Table.new

      expect(table.send(:valid_y?, 4)).to be_truthy
    end

    it 'should return false when y is less 0' do
      table = Table.new

      expect(table.send(:valid_y?, -1)).to be_falsey
    end

    it 'should return false when y greater than 4' do
      table = Table.new

      expect(table.send(:valid_y?, 10)).to be_falsey
    end
  end
end