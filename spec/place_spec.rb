require 'rspec'
require 'spec_helper'
require './lib/actions/place'

describe Place do
  describe '#initialize' do
    it 'should have a robot attribute which is nil' do
      place = Place.new(@robot, @table)

      expect(place.robot).to be_nil
    end

    it 'should have a table attribute which is nil' do
      place = Place.new(@robot, @table)

      expect(place.table).to be_nil
    end
  end
end